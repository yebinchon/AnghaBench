
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rtsx_pcr {int id; int rtsx_resv_buf_addr; int host_cmds_addr; int host_sg_tbl_addr; int msi_en; int remap_addr; int * rtsx_resv_buf; struct pci_dev* pci; int irq; int idle_work; int carddet_work; scalar_t__ card_removed; scalar_t__ card_inserted; int * host_sg_tbl_ptr; int * host_cmds_ptr; struct rtsx_pcr* pcr; } ;
struct pcr_handle {int id; int rtsx_resv_buf_addr; int host_cmds_addr; int host_sg_tbl_addr; int msi_en; int remap_addr; int * rtsx_resv_buf; struct pci_dev* pci; int irq; int idle_work; int carddet_work; scalar_t__ card_removed; scalar_t__ card_inserted; int * host_sg_tbl_ptr; int * host_cmds_ptr; struct pcr_handle* pcr; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; scalar_t__ revision; scalar_t__ device; scalar_t__ vendor; } ;
struct TYPE_4__ {int pdata_size; struct rtsx_pcr* platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ CHK_PCI_PID (struct rtsx_pcr*,int) ;
 int DMA_BIT_MASK (int) ;
 int DRV_NAME_RTSX_PCI ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int HOST_CMDS_BUF_LEN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int RTSX_RESV_BUF_LEN ;
 int dev_dbg (int *,char*,int ,int,int,int) ;
 int dev_set_drvdata (int *,struct rtsx_pcr*) ;
 int * dma_alloc_coherent (int *,int ,int*,int ) ;
 int dma_free_coherent (int *,int ,int *,int) ;
 int free_irq (int ,void*) ;
 int idr_alloc (int *,struct rtsx_pcr*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct rtsx_pcr*) ;
 struct rtsx_pcr* kzalloc (int,int ) ;
 int mfd_add_devices (int *,int,TYPE_1__*,int,int *,int ,int *) ;
 int msecs_to_jiffies (int) ;
 int msi_en ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int rtsx_pci_acquire_irq (struct rtsx_pcr*) ;
 int rtsx_pci_card_detect ;
 int rtsx_pci_idle_work ;
 int rtsx_pci_idr ;
 int rtsx_pci_init_chip (struct rtsx_pcr*) ;
 int rtsx_pci_lock ;
 TYPE_1__* rtsx_pcr_cells ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int rtsx_pci_probe(struct pci_dev *pcidev,
     const struct pci_device_id *id)
{
 struct rtsx_pcr *pcr;
 struct pcr_handle *handle;
 u32 base, len;
 int ret, i, bar = 0;

 dev_dbg(&(pcidev->dev),
  ": Realtek PCI-E Card Reader found at %s [%04x:%04x] (rev %x)\n",
  pci_name(pcidev), (int)pcidev->vendor, (int)pcidev->device,
  (int)pcidev->revision);

 ret = pci_set_dma_mask(pcidev, DMA_BIT_MASK(32));
 if (ret < 0)
  return ret;

 ret = pci_enable_device(pcidev);
 if (ret)
  return ret;

 ret = pci_request_regions(pcidev, DRV_NAME_RTSX_PCI);
 if (ret)
  goto disable;

 pcr = kzalloc(sizeof(*pcr), GFP_KERNEL);
 if (!pcr) {
  ret = -ENOMEM;
  goto release_pci;
 }

 handle = kzalloc(sizeof(*handle), GFP_KERNEL);
 if (!handle) {
  ret = -ENOMEM;
  goto free_pcr;
 }
 handle->pcr = pcr;

 idr_preload(GFP_KERNEL);
 spin_lock(&rtsx_pci_lock);
 ret = idr_alloc(&rtsx_pci_idr, pcr, 0, 0, GFP_NOWAIT);
 if (ret >= 0)
  pcr->id = ret;
 spin_unlock(&rtsx_pci_lock);
 idr_preload_end();
 if (ret < 0)
  goto free_handle;

 pcr->pci = pcidev;
 dev_set_drvdata(&pcidev->dev, handle);

 if (CHK_PCI_PID(pcr, 0x525A))
  bar = 1;
 len = pci_resource_len(pcidev, bar);
 base = pci_resource_start(pcidev, bar);
 pcr->remap_addr = ioremap_nocache(base, len);
 if (!pcr->remap_addr) {
  ret = -ENOMEM;
  goto free_handle;
 }

 pcr->rtsx_resv_buf = dma_alloc_coherent(&(pcidev->dev),
   RTSX_RESV_BUF_LEN, &(pcr->rtsx_resv_buf_addr),
   GFP_KERNEL);
 if (pcr->rtsx_resv_buf == ((void*)0)) {
  ret = -ENXIO;
  goto unmap;
 }
 pcr->host_cmds_ptr = pcr->rtsx_resv_buf;
 pcr->host_cmds_addr = pcr->rtsx_resv_buf_addr;
 pcr->host_sg_tbl_ptr = pcr->rtsx_resv_buf + HOST_CMDS_BUF_LEN;
 pcr->host_sg_tbl_addr = pcr->rtsx_resv_buf_addr + HOST_CMDS_BUF_LEN;

 pcr->card_inserted = 0;
 pcr->card_removed = 0;
 INIT_DELAYED_WORK(&pcr->carddet_work, rtsx_pci_card_detect);
 INIT_DELAYED_WORK(&pcr->idle_work, rtsx_pci_idle_work);

 pcr->msi_en = msi_en;
 if (pcr->msi_en) {
  ret = pci_enable_msi(pcidev);
  if (ret)
   pcr->msi_en = 0;
 }

 ret = rtsx_pci_acquire_irq(pcr);
 if (ret < 0)
  goto disable_msi;

 pci_set_master(pcidev);
 synchronize_irq(pcr->irq);

 ret = rtsx_pci_init_chip(pcr);
 if (ret < 0)
  goto disable_irq;

 for (i = 0; i < ARRAY_SIZE(rtsx_pcr_cells); i++) {
  rtsx_pcr_cells[i].platform_data = handle;
  rtsx_pcr_cells[i].pdata_size = sizeof(*handle);
 }
 ret = mfd_add_devices(&pcidev->dev, pcr->id, rtsx_pcr_cells,
   ARRAY_SIZE(rtsx_pcr_cells), ((void*)0), 0, ((void*)0));
 if (ret < 0)
  goto disable_irq;

 schedule_delayed_work(&pcr->idle_work, msecs_to_jiffies(200));

 return 0;

disable_irq:
 free_irq(pcr->irq, (void *)pcr);
disable_msi:
 if (pcr->msi_en)
  pci_disable_msi(pcr->pci);
 dma_free_coherent(&(pcr->pci->dev), RTSX_RESV_BUF_LEN,
   pcr->rtsx_resv_buf, pcr->rtsx_resv_buf_addr);
unmap:
 iounmap(pcr->remap_addr);
free_handle:
 kfree(handle);
free_pcr:
 kfree(pcr);
release_pci:
 pci_release_regions(pcidev);
disable:
 pci_disable_device(pcidev);

 return ret;
}
