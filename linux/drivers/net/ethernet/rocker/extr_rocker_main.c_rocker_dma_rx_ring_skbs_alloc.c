
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_dma_ring_info {int size; int * desc_info; } ;
struct rocker_port {struct rocker* rocker; struct rocker_dma_ring_info rx_ring; } ;
struct rocker {int dummy; } ;


 int rocker_dma_rx_ring_skb_alloc (struct rocker_port const*,int *) ;
 int rocker_dma_rx_ring_skb_free (struct rocker const*,int *) ;

__attribute__((used)) static int rocker_dma_rx_ring_skbs_alloc(const struct rocker_port *rocker_port)
{
 const struct rocker_dma_ring_info *rx_ring = &rocker_port->rx_ring;
 const struct rocker *rocker = rocker_port->rocker;
 int i;
 int err;

 for (i = 0; i < rx_ring->size; i++) {
  err = rocker_dma_rx_ring_skb_alloc(rocker_port,
         &rx_ring->desc_info[i]);
  if (err)
   goto rollback;
 }
 return 0;

rollback:
 for (i--; i >= 0; i--)
  rocker_dma_rx_ring_skb_free(rocker, &rx_ring->desc_info[i]);
 return err;
}
