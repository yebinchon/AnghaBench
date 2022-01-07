
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; int needs_free_netdev; int mtu; int priv_flags; int type; int * netdev_ops; scalar_t__ features; } ;
struct TYPE_2__ {int use_frag; int use_stx; int use_fcs; int link_select; } ;
struct cfspi {struct net_device* ndev; TYPE_1__ cfdev; int chead; int qhead; } ;


 int ARPHRD_CAIF ;
 int CAIF_LINK_HIGH_BANDW ;
 int IFF_NOARP ;
 int IFF_NO_QUEUE ;
 int IFF_POINTOPOINT ;
 int SPI_MAX_PAYLOAD_SIZE ;
 int cfspi_ops ;
 struct cfspi* netdev_priv (struct net_device*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void cfspi_setup(struct net_device *dev)
{
 struct cfspi *cfspi = netdev_priv(dev);
 dev->features = 0;
 dev->netdev_ops = &cfspi_ops;
 dev->type = ARPHRD_CAIF;
 dev->flags = IFF_NOARP | IFF_POINTOPOINT;
 dev->priv_flags |= IFF_NO_QUEUE;
 dev->mtu = SPI_MAX_PAYLOAD_SIZE;
 dev->needs_free_netdev = 1;
 skb_queue_head_init(&cfspi->qhead);
 skb_queue_head_init(&cfspi->chead);
 cfspi->cfdev.link_select = CAIF_LINK_HIGH_BANDW;
 cfspi->cfdev.use_frag = 0;
 cfspi->cfdev.use_stx = 0;
 cfspi->cfdev.use_fcs = 0;
 cfspi->ndev = dev;
}
