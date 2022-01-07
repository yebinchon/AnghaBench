
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resource; int context; } ;
struct vmballoon {int capabilities; TYPE_1__ vmci_doorbell; } ;


 int EIO ;
 int VMCI_FLAG_DELAYED_CB ;
 int VMCI_PRIVILEGE_FLAG_RESTRICTED ;
 unsigned long VMCI_SUCCESS ;
 int VMW_BALLOON_CMD_VMCI_DOORBELL_SET ;
 int VMW_BALLOON_SIGNALLED_WAKEUP_CMD ;
 unsigned long VMW_BALLOON_SUCCESS ;
 unsigned long __vmballoon_cmd (struct vmballoon*,int ,int ,int ,int *) ;
 int vmballoon_doorbell ;
 int vmballoon_vmci_cleanup (struct vmballoon*) ;
 unsigned long vmci_doorbell_create (TYPE_1__*,int ,int ,int ,struct vmballoon*) ;

__attribute__((used)) static int vmballoon_vmci_init(struct vmballoon *b)
{
 unsigned long error;

 if ((b->capabilities & VMW_BALLOON_SIGNALLED_WAKEUP_CMD) == 0)
  return 0;

 error = vmci_doorbell_create(&b->vmci_doorbell, VMCI_FLAG_DELAYED_CB,
         VMCI_PRIVILEGE_FLAG_RESTRICTED,
         vmballoon_doorbell, b);

 if (error != VMCI_SUCCESS)
  goto fail;

 error = __vmballoon_cmd(b, VMW_BALLOON_CMD_VMCI_DOORBELL_SET,
    b->vmci_doorbell.context,
    b->vmci_doorbell.resource, ((void*)0));

 if (error != VMW_BALLOON_SUCCESS)
  goto fail;

 return 0;
fail:
 vmballoon_vmci_cleanup(b);
 return -EIO;
}
