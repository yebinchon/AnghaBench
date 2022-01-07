
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ag71xx_ring {scalar_t__ dirty; scalar_t__ curr; int * buf; scalar_t__ descs_dma; int order; } ;
struct ag71xx_desc {int ctrl; scalar_t__ next; } ;
struct ag71xx {int rx_buf_offset; struct net_device* ndev; struct ag71xx_ring rx_ring; } ;


 unsigned int AG71XX_DESC_SIZE ;
 int BIT (int ) ;
 int DESC_EMPTY ;
 int ENOMEM ;
 int ag71xx_fill_rx_buf (struct ag71xx*,int *,int ,int ) ;
 struct ag71xx_desc* ag71xx_ring_desc (struct ag71xx_ring*,unsigned int) ;
 int netdev_alloc_frag ;
 int netif_dbg (struct ag71xx*,int ,struct net_device*,char*,struct ag71xx_desc*,scalar_t__) ;
 int rx_status ;
 int wmb () ;

__attribute__((used)) static int ag71xx_ring_rx_init(struct ag71xx *ag)
{
 struct ag71xx_ring *ring = &ag->rx_ring;
 struct net_device *ndev = ag->ndev;
 int ring_mask = BIT(ring->order) - 1;
 int ring_size = BIT(ring->order);
 unsigned int i;
 int ret;

 ret = 0;
 for (i = 0; i < ring_size; i++) {
  struct ag71xx_desc *desc = ag71xx_ring_desc(ring, i);

  desc->next = (u32)(ring->descs_dma +
   AG71XX_DESC_SIZE * ((i + 1) & ring_mask));

  netif_dbg(ag, rx_status, ndev, "RX desc at %p, next is %08x\n",
     desc, desc->next);
 }

 for (i = 0; i < ring_size; i++) {
  struct ag71xx_desc *desc = ag71xx_ring_desc(ring, i);

  if (!ag71xx_fill_rx_buf(ag, &ring->buf[i], ag->rx_buf_offset,
     netdev_alloc_frag)) {
   ret = -ENOMEM;
   break;
  }

  desc->ctrl = DESC_EMPTY;
 }


 wmb();

 ring->curr = 0;
 ring->dirty = 0;

 return ret;
}
