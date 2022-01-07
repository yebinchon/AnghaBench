
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {int number; int partid; int key; int (* func ) (int,int ,int ,int *,int ) ;} ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int dev_dbg (int ,char*,int,int ,int ) ;
 int stub1 (int,int ,int ,int *,int ) ;
 int xpc_chan ;

void
xpc_disconnect_callout(struct xpc_channel *ch, enum xp_retval reason)
{






 if (ch->func != ((void*)0)) {
  dev_dbg(xpc_chan, "ch->func() called, reason=%d, partid=%d, "
   "channel=%d\n", reason, ch->partid, ch->number);

  ch->func(reason, ch->partid, ch->number, ((void*)0), ch->key);

  dev_dbg(xpc_chan, "ch->func() returned, reason=%d, partid=%d, "
   "channel=%d\n", reason, ch->partid, ch->number);
 }
}
