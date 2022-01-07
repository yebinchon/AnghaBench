
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int capabilities; int reset_required; int conf_sem; } ;


 int VMW_BALLOON_BASIC_CMDS ;
 int VMW_BALLOON_BATCHED_CMDS ;
 int VMW_BALLOON_CAPABILITIES ;
 int VMW_BALLOON_STAT_RESET ;
 int down_write (int *) ;
 int pr_err (char*) ;
 int up_write (int *) ;
 int vmballoon_deinit_batching (struct vmballoon*) ;
 scalar_t__ vmballoon_init_batching (struct vmballoon*) ;
 int vmballoon_pop (struct vmballoon*) ;
 scalar_t__ vmballoon_send_guest_id (struct vmballoon*) ;
 int vmballoon_send_start (struct vmballoon*,int ) ;
 int vmballoon_stats_gen_inc (struct vmballoon*,int ) ;
 int vmballoon_vmci_cleanup (struct vmballoon*) ;
 int vmballoon_vmci_init (struct vmballoon*) ;

__attribute__((used)) static void vmballoon_reset(struct vmballoon *b)
{
 int error;

 down_write(&b->conf_sem);

 vmballoon_vmci_cleanup(b);


 vmballoon_pop(b);

 if (vmballoon_send_start(b, VMW_BALLOON_CAPABILITIES))
  goto unlock;

 if ((b->capabilities & VMW_BALLOON_BATCHED_CMDS) != 0) {
  if (vmballoon_init_batching(b)) {






   vmballoon_send_start(b, 0);
   goto unlock;
  }
 } else if ((b->capabilities & VMW_BALLOON_BASIC_CMDS) != 0) {
  vmballoon_deinit_batching(b);
 }

 vmballoon_stats_gen_inc(b, VMW_BALLOON_STAT_RESET);
 b->reset_required = 0;

 error = vmballoon_vmci_init(b);
 if (error)
  pr_err("failed to initialize vmci doorbell\n");

 if (vmballoon_send_guest_id(b))
  pr_err("failed to send guest ID to the host\n");

unlock:
 up_write(&b->conf_sem);
}
