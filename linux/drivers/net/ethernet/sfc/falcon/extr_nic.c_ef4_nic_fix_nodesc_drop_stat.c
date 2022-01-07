
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ef4_nic {int rx_nodesc_drops_prev_state; scalar_t__ rx_nodesc_drops_while_down; TYPE_1__* net_dev; scalar_t__ rx_nodesc_drops_total; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;

void ef4_nic_fix_nodesc_drop_stat(struct ef4_nic *efx, u64 *rx_nodesc_drops)
{

 if (!(efx->net_dev->flags & IFF_UP) || !efx->rx_nodesc_drops_prev_state)
  efx->rx_nodesc_drops_while_down +=
   *rx_nodesc_drops - efx->rx_nodesc_drops_total;
 efx->rx_nodesc_drops_total = *rx_nodesc_drops;
 efx->rx_nodesc_drops_prev_state = !!(efx->net_dev->flags & IFF_UP);
 *rx_nodesc_drops -= efx->rx_nodesc_drops_while_down;
}
