
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timer; } ;
struct vnet_port {int dev; TYPE_2__ vio; int napi; TYPE_1__* vp; int list; int clean_timer; } ;
struct vio_dev {int dev; } ;
struct TYPE_3__ {int lock; } ;


 int del_timer_sync (int *) ;
 struct vnet_port* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int free_netdev (int ) ;
 int list_del_rcu (int *) ;
 int napi_disable (int *) ;
 int netif_napi_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunvnet_port_free_tx_bufs_common (struct vnet_port*) ;
 int sunvnet_port_rm_txq_common (struct vnet_port*) ;
 int synchronize_rcu () ;
 int unregister_netdev (int ) ;
 int vio_ldc_free (TYPE_2__*) ;

__attribute__((used)) static int vsw_port_remove(struct vio_dev *vdev)
{
 struct vnet_port *port = dev_get_drvdata(&vdev->dev);
 unsigned long flags;

 if (port) {
  del_timer_sync(&port->vio.timer);
  del_timer_sync(&port->clean_timer);

  napi_disable(&port->napi);
  unregister_netdev(port->dev);

  list_del_rcu(&port->list);

  synchronize_rcu();
  spin_lock_irqsave(&port->vp->lock, flags);
  sunvnet_port_rm_txq_common(port);
  spin_unlock_irqrestore(&port->vp->lock, flags);
  netif_napi_del(&port->napi);
  sunvnet_port_free_tx_bufs_common(port);
  vio_ldc_free(&port->vio);

  dev_set_drvdata(&vdev->dev, ((void*)0));

  free_netdev(port->dev);
 }

 return 0;
}
