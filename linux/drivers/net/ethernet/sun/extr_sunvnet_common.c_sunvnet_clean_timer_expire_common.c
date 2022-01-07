
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_port {int clean_timer; } ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ VNET_CLEAN_TIMEOUT ;
 int VNET_PORT_TO_NET_DEVICE (struct vnet_port*) ;
 int clean_timer ;
 int del_timer (int *) ;
 struct vnet_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_tx_lock (int ) ;
 int netif_tx_unlock (int ) ;
 struct vnet_port* port ;
 struct sk_buff* vnet_clean_tx_ring (struct vnet_port*,unsigned int*) ;
 int vnet_free_skbs (struct sk_buff*) ;

void sunvnet_clean_timer_expire_common(struct timer_list *t)
{
 struct vnet_port *port = from_timer(port, t, clean_timer);
 struct sk_buff *freeskbs;
 unsigned pending;

 netif_tx_lock(VNET_PORT_TO_NET_DEVICE(port));
 freeskbs = vnet_clean_tx_ring(port, &pending);
 netif_tx_unlock(VNET_PORT_TO_NET_DEVICE(port));

 vnet_free_skbs(freeskbs);

 if (pending)
  (void)mod_timer(&port->clean_timer,
    jiffies + VNET_CLEAN_TIMEOUT);
  else
  del_timer(&port->clean_timer);
}
