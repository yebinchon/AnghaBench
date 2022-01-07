
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxl_afu {int slice; TYPE_1__* guest; int dev; } ;
struct TYPE_4__ {int (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_3__ {int previous_state; } ;


 int CXL_ERROR_DETECTED_EVENT ;
 int CXL_RESUME_EVENT ;
 int CXL_SLOT_RESET_EVENT ;
 int EINVAL ;




 int afu_read_error_state (struct cxl_afu*,int*) ;
 int cxl_context_detach_all (struct cxl_afu*) ;
 TYPE_2__* cxl_ops ;
 int dev_err (int *,char*) ;
 int pci_channel_io_frozen ;
 int pci_channel_io_normal ;
 int pci_channel_io_perm_failure ;
 int pci_error_handlers (struct cxl_afu*,int ,int ) ;
 int pr_devel (char*,int,...) ;
 int pr_err (char*,int ,int) ;
 int stub1 (struct cxl_afu*) ;

__attribute__((used)) static int afu_update_state(struct cxl_afu *afu)
{
 int rc, cur_state;

 rc = afu_read_error_state(afu, &cur_state);
 if (rc)
  return rc;

 if (afu->guest->previous_state == cur_state)
  return 0;

 pr_devel("AFU(%d) update state to %#x\n", afu->slice, cur_state);

 switch (cur_state) {
 case 130:
  afu->guest->previous_state = cur_state;
  break;

 case 131:
  pci_error_handlers(afu, CXL_ERROR_DETECTED_EVENT,
    pci_channel_io_frozen);

  cxl_context_detach_all(afu);
  if ((rc = cxl_ops->afu_reset(afu)))
   pr_devel("reset hcall failed %d\n", rc);

  rc = afu_read_error_state(afu, &cur_state);
  if (!rc && cur_state == 130) {
   pci_error_handlers(afu, CXL_SLOT_RESET_EVENT,
     pci_channel_io_normal);
   pci_error_handlers(afu, CXL_RESUME_EVENT, 0);
  }
  afu->guest->previous_state = 0;
  break;

 case 128:
  afu->guest->previous_state = cur_state;
  break;

 case 129:
  dev_err(&afu->dev, "AFU is in permanent error state\n");
  pci_error_handlers(afu, CXL_ERROR_DETECTED_EVENT,
    pci_channel_io_perm_failure);
  afu->guest->previous_state = cur_state;
  break;

 default:
  pr_err("Unexpected AFU(%d) error state: %#x\n",
         afu->slice, cur_state);
  return -EINVAL;
 }

 return rc;
}
