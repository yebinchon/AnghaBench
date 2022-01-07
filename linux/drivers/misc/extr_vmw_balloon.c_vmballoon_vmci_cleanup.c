
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int vmci_doorbell; } ;


 int VMCI_INVALID_HANDLE ;
 int VMCI_INVALID_ID ;
 int VMW_BALLOON_CMD_VMCI_DOORBELL_SET ;
 int vmballoon_cmd (struct vmballoon*,int ,int ,int ) ;
 int vmci_doorbell_destroy (int ) ;
 int vmci_handle_is_invalid (int ) ;

__attribute__((used)) static void vmballoon_vmci_cleanup(struct vmballoon *b)
{
 vmballoon_cmd(b, VMW_BALLOON_CMD_VMCI_DOORBELL_SET,
        VMCI_INVALID_ID, VMCI_INVALID_ID);

 if (!vmci_handle_is_invalid(b->vmci_doorbell)) {
  vmci_doorbell_destroy(b->vmci_doorbell);
  b->vmci_doorbell = VMCI_INVALID_HANDLE;
 }
}
