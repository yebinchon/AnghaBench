
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rx_ring {scalar_t__ num_rfd; int num_ready_recv; int recv_list; } ;
struct rfd {int list_node; int * skb; } ;
struct et131x_adapter {struct rx_ring rx_ring; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 struct rfd* kzalloc (int,int) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int et131x_init_recv(struct et131x_adapter *adapter)
{
 struct rfd *rfd;
 u32 rfdct;
 struct rx_ring *rx_ring = &adapter->rx_ring;


 for (rfdct = 0; rfdct < rx_ring->num_rfd; rfdct++) {
  rfd = kzalloc(sizeof(*rfd), GFP_ATOMIC | GFP_DMA);
  if (!rfd)
   return -ENOMEM;

  rfd->skb = ((void*)0);


  list_add_tail(&rfd->list_node, &rx_ring->recv_list);


  rx_ring->num_ready_recv++;
 }

 return 0;
}
