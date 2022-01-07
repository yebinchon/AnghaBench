
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhine_private {TYPE_1__* rx_ring; scalar_t__ cur_rx; } ;
struct TYPE_2__ {int rx_status; } ;


 int DescOwn ;
 int RX_RING_SIZE ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void rhine_reset_rbufs(struct rhine_private *rp)
{
 int i;

 rp->cur_rx = 0;

 for (i = 0; i < RX_RING_SIZE; i++)
  rp->rx_ring[i].rx_status = cpu_to_le32(DescOwn);
}
