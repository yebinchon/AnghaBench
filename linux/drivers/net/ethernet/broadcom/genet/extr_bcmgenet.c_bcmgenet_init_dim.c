
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int work; } ;
struct bcmgenet_net_dim {scalar_t__ bytes; scalar_t__ packets; scalar_t__ event_ctr; TYPE_1__ dim; } ;
struct bcmgenet_rx_ring {struct bcmgenet_net_dim dim; } ;


 int DIM_CQ_PERIOD_MODE_START_FROM_EQE ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;

__attribute__((used)) static void bcmgenet_init_dim(struct bcmgenet_rx_ring *ring,
         void (*cb)(struct work_struct *work))
{
 struct bcmgenet_net_dim *dim = &ring->dim;

 INIT_WORK(&dim->dim.work, cb);
 dim->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 dim->event_ctr = 0;
 dim->packets = 0;
 dim->bytes = 0;
}
