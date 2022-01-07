
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_pcr {int remove_pci; struct rtsx_pcr* slots; int id; int remap_addr; TYPE_1__* pci; scalar_t__ msi_en; int irq; int rtsx_resv_buf_addr; int rtsx_resv_buf; int idle_work; int carddet_work; int lock; scalar_t__ bier; struct rtsx_pcr* pcr; } ;
struct pcr_handle {int remove_pci; struct pcr_handle* slots; int id; int remap_addr; TYPE_1__* pci; scalar_t__ msi_en; int irq; int rtsx_resv_buf_addr; int rtsx_resv_buf; int idle_work; int carddet_work; int lock; scalar_t__ bier; struct pcr_handle* pcr; } ;
struct pci_dev {scalar_t__ device; scalar_t__ vendor; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int RTSX_BIER ;
 int RTSX_RESV_BUF_LEN ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int *,char*,int ,int,int) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int free_irq (int ,void*) ;
 int idr_remove (int *,int ) ;
 int iounmap (int ) ;
 int kfree (struct rtsx_pcr*) ;
 int mfd_remove_devices (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (TYPE_1__*) ;
 struct rtsx_pcr* pci_get_drvdata (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int rtsx_pci_idr ;
 int rtsx_pci_lock ;
 int rtsx_pci_writel (struct rtsx_pcr*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void rtsx_pci_remove(struct pci_dev *pcidev)
{
 struct pcr_handle *handle = pci_get_drvdata(pcidev);
 struct rtsx_pcr *pcr = handle->pcr;

 pcr->remove_pci = 1;


 spin_lock_irq(&pcr->lock);
 rtsx_pci_writel(pcr, RTSX_BIER, 0);
 pcr->bier = 0;
 spin_unlock_irq(&pcr->lock);

 cancel_delayed_work_sync(&pcr->carddet_work);
 cancel_delayed_work_sync(&pcr->idle_work);

 mfd_remove_devices(&pcidev->dev);

 dma_free_coherent(&(pcr->pci->dev), RTSX_RESV_BUF_LEN,
   pcr->rtsx_resv_buf, pcr->rtsx_resv_buf_addr);
 free_irq(pcr->irq, (void *)pcr);
 if (pcr->msi_en)
  pci_disable_msi(pcr->pci);
 iounmap(pcr->remap_addr);

 pci_release_regions(pcidev);
 pci_disable_device(pcidev);

 spin_lock(&rtsx_pci_lock);
 idr_remove(&rtsx_pci_idr, pcr->id);
 spin_unlock(&rtsx_pci_lock);

 kfree(pcr->slots);
 kfree(pcr);
 kfree(handle);

 dev_dbg(&(pcidev->dev),
  ": Realtek PCI-E Card Reader at %s [%04x:%04x] has been removed\n",
  pci_name(pcidev), (int)pcidev->vendor, (int)pcidev->device);
}
