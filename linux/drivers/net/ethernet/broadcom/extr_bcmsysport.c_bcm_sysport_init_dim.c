
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int work; } ;
struct bcm_sysport_net_dim {scalar_t__ bytes; scalar_t__ packets; scalar_t__ event_ctr; TYPE_1__ dim; } ;
struct bcm_sysport_priv {struct bcm_sysport_net_dim dim; } ;


 int DIM_CQ_PERIOD_MODE_START_FROM_EQE ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;

__attribute__((used)) static void bcm_sysport_init_dim(struct bcm_sysport_priv *priv,
     void (*cb)(struct work_struct *work))
{
 struct bcm_sysport_net_dim *dim = &priv->dim;

 INIT_WORK(&dim->dim.work, cb);
 dim->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 dim->event_ctr = 0;
 dim->packets = 0;
 dim->bytes = 0;
}
