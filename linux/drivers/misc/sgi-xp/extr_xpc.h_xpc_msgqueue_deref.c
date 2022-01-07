
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {size_t partid; int references; } ;
typedef scalar_t__ s32 ;


 int DBUG_ON (int) ;
 scalar_t__ atomic_dec_return (int *) ;
 int * xpc_partitions ;
 int xpc_wakeup_channel_mgr (int *) ;

__attribute__((used)) static inline void
xpc_msgqueue_deref(struct xpc_channel *ch)
{
 s32 refs = atomic_dec_return(&ch->references);

 DBUG_ON(refs < 0);
 if (refs == 0)
  xpc_wakeup_channel_mgr(&xpc_partitions[ch->partid]);
}
