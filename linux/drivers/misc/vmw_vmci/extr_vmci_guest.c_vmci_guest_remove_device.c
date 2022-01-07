
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_guest_device {int data_buffer; int notification_base; scalar_t__ notification_bitmap; int bm_tasklet; int datagram_tasklet; scalar_t__ exclusive_vectors; scalar_t__ iobase; } ;
struct pci_dev {int dev; } ;


 int PAGE_SIZE ;
 scalar_t__ VMCI_CONTROL_ADDR ;
 int VMCI_CONTROL_RESET ;
 int VMCI_EVENT_CTX_ID_UPDATE ;
 int VMCI_SUCCESS ;
 int atomic_dec (int *) ;
 int ctx_update_sub_id ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*,int ,int ,int) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int free_irq (int ,struct vmci_guest_device*) ;
 int iowrite32 (int ,scalar_t__) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 struct vmci_guest_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_kill (int *) ;
 int vfree (int ) ;
 int * vmci_dev_g ;
 int vmci_dev_spinlock ;
 int vmci_event_unsubscribe (int ) ;
 int vmci_num_guest_devices ;
 int * vmci_pdev ;
 int vmci_qp_guest_endpoints_exit () ;

__attribute__((used)) static void vmci_guest_remove_device(struct pci_dev *pdev)
{
 struct vmci_guest_device *vmci_dev = pci_get_drvdata(pdev);
 int vmci_err;

 dev_dbg(&pdev->dev, "Removing device\n");

 atomic_dec(&vmci_num_guest_devices);

 vmci_qp_guest_endpoints_exit();

 vmci_err = vmci_event_unsubscribe(ctx_update_sub_id);
 if (vmci_err < VMCI_SUCCESS)
  dev_warn(&pdev->dev,
    "Failed to unsubscribe from event (type=%d) with subscriber (ID=0x%x): %d\n",
    VMCI_EVENT_CTX_ID_UPDATE, ctx_update_sub_id, vmci_err);

 spin_lock_irq(&vmci_dev_spinlock);
 vmci_dev_g = ((void*)0);
 vmci_pdev = ((void*)0);
 spin_unlock_irq(&vmci_dev_spinlock);

 dev_dbg(&pdev->dev, "Resetting vmci device\n");
 iowrite32(VMCI_CONTROL_RESET, vmci_dev->iobase + VMCI_CONTROL_ADDR);






 if (vmci_dev->exclusive_vectors)
  free_irq(pci_irq_vector(pdev, 1), vmci_dev);
 free_irq(pci_irq_vector(pdev, 0), vmci_dev);
 pci_free_irq_vectors(pdev);

 tasklet_kill(&vmci_dev->datagram_tasklet);
 tasklet_kill(&vmci_dev->bm_tasklet);

 if (vmci_dev->notification_bitmap) {





  dma_free_coherent(&pdev->dev, PAGE_SIZE,
      vmci_dev->notification_bitmap,
      vmci_dev->notification_base);
 }

 vfree(vmci_dev->data_buffer);


}
