
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xpnet_message {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {int name; } ;


 int DBUG_ON (int) ;
 int XPC_NET_CHANNEL ;
 int __clear_bit (short,scalar_t__) ;
 int __set_bit (short,scalar_t__) ;
 int bitmap_empty (unsigned long*,short) ;
 int dev_dbg (int ,char*,int ,short) ;
 int netif_carrier_off (TYPE_1__*) ;
 int netif_carrier_on (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;


 short xp_max_npartitions ;
 int xpnet ;
 int xpnet_broadcast_lock ;
 scalar_t__ xpnet_broadcast_partitions ;
 TYPE_1__* xpnet_device ;
 int xpnet_receive (short,int,struct xpnet_message*) ;

__attribute__((used)) static void
xpnet_connection_activity(enum xp_retval reason, short partid, int channel,
     void *data, void *key)
{
 DBUG_ON(partid < 0 || partid >= xp_max_npartitions);
 DBUG_ON(channel != XPC_NET_CHANNEL);

 switch (reason) {
 case 128:
  DBUG_ON(data == ((void*)0));

  xpnet_receive(partid, channel, (struct xpnet_message *)data);
  break;

 case 129:
  spin_lock_bh(&xpnet_broadcast_lock);
  __set_bit(partid, xpnet_broadcast_partitions);
  spin_unlock_bh(&xpnet_broadcast_lock);

  netif_carrier_on(xpnet_device);

  dev_dbg(xpnet, "%s connected to partition %d\n",
   xpnet_device->name, partid);
  break;

 default:
  spin_lock_bh(&xpnet_broadcast_lock);
  __clear_bit(partid, xpnet_broadcast_partitions);
  spin_unlock_bh(&xpnet_broadcast_lock);

  if (bitmap_empty((unsigned long *)xpnet_broadcast_partitions,
     xp_max_npartitions)) {
   netif_carrier_off(xpnet_device);
  }

  dev_dbg(xpnet, "%s disconnected from partition %d\n",
   xpnet_device->name, partid);
  break;
 }
}
