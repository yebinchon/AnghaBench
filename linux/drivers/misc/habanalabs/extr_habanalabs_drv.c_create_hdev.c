
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int device; } ;
struct hl_device {scalar_t__ asic_type; int disabled; int dma_mask; int id; int id_control; struct pci_dev* pdev; int timeout_jiffies; scalar_t__ pldm; int reset_on_lockup; int major; } ;
typedef enum hl_asic_type { ____Placeholder_hl_asic_type } hl_asic_type ;


 scalar_t__ ASIC_INVALID ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int HL_MAX_MINORS ;
 int MAX_SCHEDULE_TIMEOUT ;
 int dev_err (int *,char*) ;
 scalar_t__ get_asic_type (int ) ;
 int hl_devs_idr ;
 int hl_devs_idr_lock ;
 int hl_major ;
 int idr_alloc (int *,struct hl_device*,int,int,int ) ;
 int idr_remove (int *,int) ;
 int kfree (struct hl_device*) ;
 struct hl_device* kzalloc (int,int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int reset_on_lockup ;
 int set_driver_behavior_per_device (struct hl_device*) ;
 int timeout_locked ;

int create_hdev(struct hl_device **dev, struct pci_dev *pdev,
  enum hl_asic_type asic_type, int minor)
{
 struct hl_device *hdev;
 int rc, main_id, ctrl_id = 0;

 *dev = ((void*)0);

 hdev = kzalloc(sizeof(*hdev), GFP_KERNEL);
 if (!hdev)
  return -ENOMEM;




 if (pdev) {
  hdev->asic_type = get_asic_type(pdev->device);
  if (hdev->asic_type == ASIC_INVALID) {
   dev_err(&pdev->dev, "Unsupported ASIC\n");
   rc = -ENODEV;
   goto free_hdev;
  }
 } else {
  hdev->asic_type = asic_type;
 }

 hdev->major = hl_major;
 hdev->reset_on_lockup = reset_on_lockup;
 hdev->pldm = 0;

 set_driver_behavior_per_device(hdev);

 if (timeout_locked)
  hdev->timeout_jiffies = msecs_to_jiffies(timeout_locked * 1000);
 else
  hdev->timeout_jiffies = MAX_SCHEDULE_TIMEOUT;

 hdev->disabled = 1;
 hdev->pdev = pdev;


 hdev->dma_mask = 32;

 mutex_lock(&hl_devs_idr_lock);




 main_id = idr_alloc(&hl_devs_idr, hdev, 0, HL_MAX_MINORS,
    GFP_KERNEL);

 if (main_id >= 0)
  ctrl_id = idr_alloc(&hl_devs_idr, hdev, main_id + 1,
     main_id + 2, GFP_KERNEL);

 mutex_unlock(&hl_devs_idr_lock);

 if ((main_id < 0) || (ctrl_id < 0)) {
  if ((main_id == -ENOSPC) || (ctrl_id == -ENOSPC))
   pr_err("too many devices in the system\n");

  if (main_id >= 0) {
   mutex_lock(&hl_devs_idr_lock);
   idr_remove(&hl_devs_idr, main_id);
   mutex_unlock(&hl_devs_idr_lock);
  }

  rc = -EBUSY;
  goto free_hdev;
 }

 hdev->id = main_id;
 hdev->id_control = ctrl_id;

 *dev = hdev;

 return 0;

free_hdev:
 kfree(hdev);
 return rc;
}
