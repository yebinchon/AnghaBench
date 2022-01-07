
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct vnet_port {TYPE_1__ vio; int napi; int clean_timer; int hash; int list; } ;
struct vio_dev {int dev; } ;


 int del_timer_sync (int *) ;
 struct vnet_port* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int hlist_del_rcu (int *) ;
 int kfree (struct vnet_port*) ;
 int list_del_rcu (int *) ;
 int napi_disable (int *) ;
 int netif_napi_del (int *) ;
 int sunvnet_port_free_tx_bufs_common (struct vnet_port*) ;
 int sunvnet_port_rm_txq_common (struct vnet_port*) ;
 int synchronize_rcu () ;
 int vio_ldc_free (TYPE_1__*) ;

__attribute__((used)) static int vnet_port_remove(struct vio_dev *vdev)
{
 struct vnet_port *port = dev_get_drvdata(&vdev->dev);

 if (port) {
  del_timer_sync(&port->vio.timer);

  napi_disable(&port->napi);

  list_del_rcu(&port->list);
  hlist_del_rcu(&port->hash);

  synchronize_rcu();
  del_timer_sync(&port->clean_timer);
  sunvnet_port_rm_txq_common(port);
  netif_napi_del(&port->napi);
  sunvnet_port_free_tx_bufs_common(port);
  vio_ldc_free(&port->vio);

  dev_set_drvdata(&vdev->dev, ((void*)0));

  kfree(port);
 }
 return 0;
}
