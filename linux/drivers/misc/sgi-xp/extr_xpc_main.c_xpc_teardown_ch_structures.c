
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition {scalar_t__ setup_state; int * channels; int * remote_openclose_args; int * remote_openclose_args_base; int references; int teardown_wq; int nchannels_active; int nchannels_engaged; } ;
struct TYPE_2__ {int (* teardown_ch_structures ) (struct xpc_partition*) ;} ;


 int DBUG_ON (int) ;
 scalar_t__ XPC_P_SS_SETUP ;
 scalar_t__ XPC_P_SS_TORNDOWN ;
 scalar_t__ XPC_P_SS_WTEARDOWN ;
 scalar_t__ atomic_read (int *) ;
 int kfree (int *) ;
 int stub1 (struct xpc_partition*) ;
 int wait_event (int ,int) ;
 TYPE_1__ xpc_arch_ops ;

__attribute__((used)) static void
xpc_teardown_ch_structures(struct xpc_partition *part)
{
 DBUG_ON(atomic_read(&part->nchannels_engaged) != 0);
 DBUG_ON(atomic_read(&part->nchannels_active) != 0);






 DBUG_ON(part->setup_state != XPC_P_SS_SETUP);
 part->setup_state = XPC_P_SS_WTEARDOWN;

 wait_event(part->teardown_wq, (atomic_read(&part->references) == 0));



 xpc_arch_ops.teardown_ch_structures(part);

 kfree(part->remote_openclose_args_base);
 part->remote_openclose_args = ((void*)0);
 kfree(part->channels);
 part->channels = ((void*)0);

 part->setup_state = XPC_P_SS_TORNDOWN;
}
