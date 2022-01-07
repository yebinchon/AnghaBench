
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lag_tracker {TYPE_1__* netdev_state; } ;
struct TYPE_2__ {int link_up; int tx_enabled; } ;



__attribute__((used)) static void mlx5_infer_tx_affinity_mapping(struct lag_tracker *tracker,
        u8 *port1, u8 *port2)
{
 *port1 = 1;
 *port2 = 2;
 if (!tracker->netdev_state[0].tx_enabled ||
     !tracker->netdev_state[0].link_up) {
  *port1 = 2;
  return;
 }

 if (!tracker->netdev_state[1].tx_enabled ||
     !tracker->netdev_state[1].link_up)
  *port2 = 1;
}
