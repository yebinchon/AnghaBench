
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {struct tb_ring* ring; } ;
struct TYPE_5__ {struct tb_ring* ring; } ;
struct tbnet {int napi; TYPE_3__ rx_ring; TYPE_2__ tx_ring; struct tb_xdomain* xd; } ;
struct tb_xdomain {TYPE_1__* tb; } ;
struct tb_ring {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int nhi; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int RING_FLAG_E2E ;
 int RING_FLAG_FRAME ;
 int TBIP_PDF_FRAME_END ;
 int TBIP_PDF_FRAME_START ;
 int TBNET_RING_SIZE ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct tbnet* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int start_login (struct tbnet*) ;
 struct tb_ring* tb_ring_alloc_rx (int ,int,int ,int,int ,int ,int ,struct tbnet*) ;
 struct tb_ring* tb_ring_alloc_tx (int ,int,int ,int) ;
 int tb_ring_free (struct tb_ring*) ;
 int tbnet_start_poll ;

__attribute__((used)) static int tbnet_open(struct net_device *dev)
{
 struct tbnet *net = netdev_priv(dev);
 struct tb_xdomain *xd = net->xd;
 u16 sof_mask, eof_mask;
 struct tb_ring *ring;

 netif_carrier_off(dev);

 ring = tb_ring_alloc_tx(xd->tb->nhi, -1, TBNET_RING_SIZE,
    RING_FLAG_FRAME);
 if (!ring) {
  netdev_err(dev, "failed to allocate Tx ring\n");
  return -ENOMEM;
 }
 net->tx_ring.ring = ring;

 sof_mask = BIT(TBIP_PDF_FRAME_START);
 eof_mask = BIT(TBIP_PDF_FRAME_END);

 ring = tb_ring_alloc_rx(xd->tb->nhi, -1, TBNET_RING_SIZE,
    RING_FLAG_FRAME | RING_FLAG_E2E, sof_mask,
    eof_mask, tbnet_start_poll, net);
 if (!ring) {
  netdev_err(dev, "failed to allocate Rx ring\n");
  tb_ring_free(net->tx_ring.ring);
  net->tx_ring.ring = ((void*)0);
  return -ENOMEM;
 }
 net->rx_ring.ring = ring;

 napi_enable(&net->napi);
 start_login(net);

 return 0;
}
