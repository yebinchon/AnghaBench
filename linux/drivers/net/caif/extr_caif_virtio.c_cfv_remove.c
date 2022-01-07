
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtio_device {TYPE_3__* config; TYPE_2__* vringh_config; struct cfv_info* priv; } ;
struct TYPE_4__ {int riov; } ;
struct cfv_info {int ndev; int vdev; int * vr_rx; TYPE_1__ ctx; int debugfs; int tx_release_tasklet; } ;
struct TYPE_6__ {int (* del_vqs ) (int ) ;int (* reset ) (struct virtio_device*) ;} ;
struct TYPE_5__ {int (* del_vrhs ) (int ) ;} ;


 int debugfs_remove_recursive (int ) ;
 int dev_close (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct virtio_device*) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int tasklet_kill (int *) ;
 int unregister_netdev (int ) ;
 int vringh_kiov_cleanup (int *) ;

__attribute__((used)) static void cfv_remove(struct virtio_device *vdev)
{
 struct cfv_info *cfv = vdev->priv;

 rtnl_lock();
 dev_close(cfv->ndev);
 rtnl_unlock();

 tasklet_kill(&cfv->tx_release_tasklet);
 debugfs_remove_recursive(cfv->debugfs);

 vringh_kiov_cleanup(&cfv->ctx.riov);
 vdev->config->reset(vdev);
 vdev->vringh_config->del_vrhs(cfv->vdev);
 cfv->vr_rx = ((void*)0);
 vdev->config->del_vqs(cfv->vdev);
 unregister_netdev(cfv->ndev);
}
