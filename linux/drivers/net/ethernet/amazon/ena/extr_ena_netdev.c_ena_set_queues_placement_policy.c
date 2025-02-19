
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct ena_llq_configurations {int dummy; } ;
struct ena_com_dev {int supported_features; scalar_t__ tx_mem_queue_type; int mem_bar; } ;
struct ena_admin_feature_llq_desc {int dummy; } ;


 int BIT (int ) ;
 int EFAULT ;
 int ENA_ADMIN_LLQ ;
 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ;
 int ENA_MEM_BAR ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int devm_ioremap_wc (int *,int ,int ) ;
 int ena_com_config_dev_mode (struct ena_com_dev*,struct ena_admin_feature_llq_desc*,struct ena_llq_configurations*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_select_bars (struct pci_dev*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_set_queues_placement_policy(struct pci_dev *pdev,
        struct ena_com_dev *ena_dev,
        struct ena_admin_feature_llq_desc *llq,
        struct ena_llq_configurations *llq_default_configurations)
{
 bool has_mem_bar;
 int rc;
 u32 llq_feature_mask;

 llq_feature_mask = 1 << ENA_ADMIN_LLQ;
 if (!(ena_dev->supported_features & llq_feature_mask)) {
  dev_err(&pdev->dev,
   "LLQ is not supported Fallback to host mode policy.\n");
  ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
  return 0;
 }

 has_mem_bar = pci_select_bars(pdev, IORESOURCE_MEM) & BIT(ENA_MEM_BAR);

 rc = ena_com_config_dev_mode(ena_dev, llq, llq_default_configurations);
 if (unlikely(rc)) {
  dev_err(&pdev->dev,
   "Failed to configure the device mode.  Fallback to host mode policy.\n");
  ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
  return 0;
 }


 if (ena_dev->tx_mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST)
  return 0;

 if (!has_mem_bar) {
  dev_err(&pdev->dev,
   "ENA device does not expose LLQ bar. Fallback to host mode policy.\n");
  ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
  return 0;
 }

 ena_dev->mem_bar = devm_ioremap_wc(&pdev->dev,
        pci_resource_start(pdev, ENA_MEM_BAR),
        pci_resource_len(pdev, ENA_MEM_BAR));

 if (!ena_dev->mem_bar)
  return -EFAULT;

 return 0;
}
