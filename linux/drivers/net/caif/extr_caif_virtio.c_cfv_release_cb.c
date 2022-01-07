
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct TYPE_4__ {int tx_kicks; } ;
struct cfv_info {int tx_release_tasklet; TYPE_2__ stats; } ;
struct TYPE_3__ {struct cfv_info* priv; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void cfv_release_cb(struct virtqueue *vq_tx)
{
 struct cfv_info *cfv = vq_tx->vdev->priv;

 ++cfv->stats.tx_kicks;
 tasklet_schedule(&cfv->tx_release_tasklet);
}
