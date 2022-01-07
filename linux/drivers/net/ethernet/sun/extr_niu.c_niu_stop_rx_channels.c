
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring_info {int dummy; } ;
struct niu {int num_rx_rings; struct rx_ring_info* rx_rings; } ;


 int niu_stop_one_rx_channel (struct niu*,struct rx_ring_info*) ;

__attribute__((used)) static void niu_stop_rx_channels(struct niu *np)
{
 int i;

 for (i = 0; i < np->num_rx_rings; i++) {
  struct rx_ring_info *rp = &np->rx_rings[i];

  niu_stop_one_rx_channel(np, rp);
 }
}
