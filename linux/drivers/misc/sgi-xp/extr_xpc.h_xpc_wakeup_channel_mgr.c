
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {int channel_mgr_wq; int channel_mgr_requests; } ;


 int atomic_inc_return (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
xpc_wakeup_channel_mgr(struct xpc_partition *part)
{
 if (atomic_inc_return(&part->channel_mgr_requests) == 1)
  wake_up(&part->channel_mgr_wq);
}
