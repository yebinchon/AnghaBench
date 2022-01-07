
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; int needs_free_netdev; int * netdev_ops; int priv_flags; int mtu; int type; scalar_t__ features; } ;
struct TYPE_2__ {int use_frag; int use_stx; int use_fcs; int link_select; } ;
struct cfhsi {int cfg; struct net_device* ndev; TYPE_1__ cfdev; int * qhead; } ;


 int ARPHRD_CAIF ;
 int CAIF_LINK_HIGH_BANDW ;
 int CFHSI_MAX_CAIF_FRAME_SZ ;
 int CFHSI_PRIO_LAST ;
 int IFF_NOARP ;
 int IFF_NO_QUEUE ;
 int IFF_POINTOPOINT ;
 int cfhsi_netdevops ;
 int hsi_default_config ;
 struct cfhsi* netdev_priv (struct net_device*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void cfhsi_setup(struct net_device *dev)
{
 int i;
 struct cfhsi *cfhsi = netdev_priv(dev);
 dev->features = 0;
 dev->type = ARPHRD_CAIF;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->mtu = CFHSI_MAX_CAIF_FRAME_SZ;
 dev->priv_flags |= IFF_NO_QUEUE;
 dev->needs_free_netdev = 1;
 dev->netdev_ops = &cfhsi_netdevops;
 for (i = 0; i < CFHSI_PRIO_LAST; ++i)
  skb_queue_head_init(&cfhsi->qhead[i]);
 cfhsi->cfdev.link_select = CAIF_LINK_HIGH_BANDW;
 cfhsi->cfdev.use_frag = 0;
 cfhsi->cfdev.use_stx = 0;
 cfhsi->cfdev.use_fcs = 0;
 cfhsi->ndev = dev;
 cfhsi->cfg = hsi_default_config;
}
