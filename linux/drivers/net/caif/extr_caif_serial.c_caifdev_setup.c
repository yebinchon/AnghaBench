
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_frag; int use_fcs; int use_stx; int link_select; } ;
struct ser_device {struct net_device* dev; TYPE_1__ common; int head; } ;
struct net_device {int flags; int needs_free_netdev; int priv_flags; int mtu; int type; int * netdev_ops; scalar_t__ features; } ;


 int ARPHRD_CAIF ;
 int CAIF_LINK_LOW_LATENCY ;
 int CAIF_MAX_MTU ;
 int IFF_NOARP ;
 int IFF_NO_QUEUE ;
 int IFF_POINTOPOINT ;
 int netdev_ops ;
 struct ser_device* netdev_priv (struct net_device*) ;
 int ser_use_fcs ;
 int ser_use_stx ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void caifdev_setup(struct net_device *dev)
{
 struct ser_device *serdev = netdev_priv(dev);

 dev->features = 0;
 dev->netdev_ops = &netdev_ops;
 dev->type = ARPHRD_CAIF;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->mtu = CAIF_MAX_MTU;
 dev->priv_flags |= IFF_NO_QUEUE;
 dev->needs_free_netdev = 1;
 skb_queue_head_init(&serdev->head);
 serdev->common.link_select = CAIF_LINK_LOW_LATENCY;
 serdev->common.use_frag = 1;
 serdev->common.use_stx = ser_use_stx;
 serdev->common.use_fcs = ser_use_fcs;
 serdev->dev = dev;
}
