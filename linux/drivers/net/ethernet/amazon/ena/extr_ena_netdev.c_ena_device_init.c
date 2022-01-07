
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct pci_dev {int revision; struct device dev; } ;
struct TYPE_2__ {int supported_groups; } ;
struct ena_com_dev_get_features_ctx {TYPE_1__ aenq; } ;
struct ena_com_dev {int dummy; } ;


 int BIT (int ) ;
 int DMA_BIT_MASK (int) ;
 int ENA_ADMIN_FATAL_ERROR ;
 int ENA_ADMIN_KEEP_ALIVE ;
 int ENA_ADMIN_LINK_CHANGE ;
 int ENA_ADMIN_NOTIFICATION ;
 int ENA_ADMIN_WARNING ;
 int ENA_MMIO_DISABLE_REG_READ ;
 int ENA_REGS_RESET_NORMAL ;
 int aenq_handlers ;
 int dev_err (struct device*,char*,...) ;
 int ena_com_admin_destroy (struct ena_com_dev*) ;
 int ena_com_admin_init (struct ena_com_dev*,int *) ;
 int ena_com_delete_host_info (struct ena_com_dev*) ;
 int ena_com_dev_reset (struct ena_com_dev*,int ) ;
 int ena_com_get_dev_attr_feat (struct ena_com_dev*,struct ena_com_dev_get_features_ctx*) ;
 int ena_com_get_dma_width (struct ena_com_dev*) ;
 int ena_com_mmio_reg_read_request_destroy (struct ena_com_dev*) ;
 int ena_com_mmio_reg_read_request_init (struct ena_com_dev*) ;
 int ena_com_set_admin_polling_mode (struct ena_com_dev*,int) ;
 int ena_com_set_aenq_config (struct ena_com_dev*,int) ;
 int ena_com_set_mmio_read_mode (struct ena_com_dev*,int) ;
 int ena_com_validate_version (struct ena_com_dev*) ;
 int ena_config_host_info (struct ena_com_dev*,struct pci_dev*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int ena_device_init(struct ena_com_dev *ena_dev, struct pci_dev *pdev,
      struct ena_com_dev_get_features_ctx *get_feat_ctx,
      bool *wd_state)
{
 struct device *dev = &pdev->dev;
 bool readless_supported;
 u32 aenq_groups;
 int dma_width;
 int rc;

 rc = ena_com_mmio_reg_read_request_init(ena_dev);
 if (rc) {
  dev_err(dev, "failed to init mmio read less\n");
  return rc;
 }




 readless_supported = !(pdev->revision & ENA_MMIO_DISABLE_REG_READ);
 ena_com_set_mmio_read_mode(ena_dev, readless_supported);

 rc = ena_com_dev_reset(ena_dev, ENA_REGS_RESET_NORMAL);
 if (rc) {
  dev_err(dev, "Can not reset device\n");
  goto err_mmio_read_less;
 }

 rc = ena_com_validate_version(ena_dev);
 if (rc) {
  dev_err(dev, "device version is too low\n");
  goto err_mmio_read_less;
 }

 dma_width = ena_com_get_dma_width(ena_dev);
 if (dma_width < 0) {
  dev_err(dev, "Invalid dma width value %d", dma_width);
  rc = dma_width;
  goto err_mmio_read_less;
 }

 rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(dma_width));
 if (rc) {
  dev_err(dev, "pci_set_dma_mask failed 0x%x\n", rc);
  goto err_mmio_read_less;
 }

 rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(dma_width));
 if (rc) {
  dev_err(dev, "err_pci_set_consistent_dma_mask failed 0x%x\n",
   rc);
  goto err_mmio_read_less;
 }


 rc = ena_com_admin_init(ena_dev, &aenq_handlers);
 if (rc) {
  dev_err(dev,
   "Can not initialize ena admin queue with device\n");
  goto err_mmio_read_less;
 }





 ena_com_set_admin_polling_mode(ena_dev, 1);

 ena_config_host_info(ena_dev, pdev);


 rc = ena_com_get_dev_attr_feat(ena_dev, get_feat_ctx);
 if (rc) {
  dev_err(dev, "Cannot get attribute for ena device rc=%d\n", rc);
  goto err_admin_init;
 }


 aenq_groups = BIT(ENA_ADMIN_LINK_CHANGE) |
  BIT(ENA_ADMIN_FATAL_ERROR) |
  BIT(ENA_ADMIN_WARNING) |
  BIT(ENA_ADMIN_NOTIFICATION) |
  BIT(ENA_ADMIN_KEEP_ALIVE);

 aenq_groups &= get_feat_ctx->aenq.supported_groups;

 rc = ena_com_set_aenq_config(ena_dev, aenq_groups);
 if (rc) {
  dev_err(dev, "Cannot configure aenq groups rc= %d\n", rc);
  goto err_admin_init;
 }

 *wd_state = !!(aenq_groups & BIT(ENA_ADMIN_KEEP_ALIVE));

 return 0;

err_admin_init:
 ena_com_delete_host_info(ena_dev);
 ena_com_admin_destroy(ena_dev);
err_mmio_read_less:
 ena_com_mmio_reg_read_request_destroy(ena_dev);

 return rc;
}
