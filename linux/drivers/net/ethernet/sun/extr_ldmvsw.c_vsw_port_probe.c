
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnet_port {int* raddr; int switch_port; int tso; int vsw; int vio; int napi; int list; int clean_timer; scalar_t__ tsolen; struct vnet* dev; struct vnet* vp; } ;
struct vnet {int name; int dev_addr; int lock; int port_list; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int dev; int mp; } ;
struct net_device {int name; int dev_addr; int lock; int port_list; } ;
struct mdesc_handle {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ETH_ALEN ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct vnet*) ;
 int NAPI_POLL_WEIGHT ;
 int PTR_ERR (struct vnet*) ;
 int VDEV_NETWORK ;
 int del_timer_sync (int *) ;
 int dev_set_drvdata (int *,struct vnet_port*) ;
 int free_netdev (struct vnet*) ;
 int id_prop ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int* mdesc_get_property (struct mdesc_handle*,int ,int ,int*) ;
 struct mdesc_handle* mdesc_grab () ;
 int mdesc_release (struct mdesc_handle*) ;
 int napi_enable (int *) ;
 int netdev_info (struct vnet*,char*,int ) ;
 struct vnet_port* netdev_priv (struct vnet*) ;
 int netif_carrier_off (struct vnet*) ;
 int netif_napi_add (struct vnet*,int *,int ,int ) ;
 int netif_napi_del (int *) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,int*,char*) ;
 int register_netdev (struct vnet*) ;
 int remote_macaddr_prop ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunvnet_clean_timer_expire_common ;
 int sunvnet_poll_common ;
 int sunvnet_port_add_txq_common (struct vnet_port*) ;
 int synchronize_rcu () ;
 int timer_setup (int *,int ,int ) ;
 int vio_driver_init (int *,struct vio_dev*,int ,int ,int ,int *,int ) ;
 int vio_ldc_alloc (int *,int *,struct vnet_port*) ;
 int vio_ldc_free (int *) ;
 int vio_port_up (int *) ;
 struct vnet* vsw_alloc_netdev (int ,struct vio_dev*,int,int const) ;
 struct vnet* vsw_get_vnet (struct mdesc_handle*,int ,int*) ;
 int vsw_ldc_cfg ;
 int vsw_port_hwaddr ;
 int vsw_versions ;
 int vsw_vio_ops ;

__attribute__((used)) static int vsw_port_probe(struct vio_dev *vdev, const struct vio_device_id *id)
{
 struct mdesc_handle *hp;
 struct vnet_port *port;
 unsigned long flags;
 struct vnet *vp;
 struct net_device *dev;
 const u64 *rmac;
 int len, i, err;
 const u64 *port_id;
 u64 handle;

 hp = mdesc_grab();

 rmac = mdesc_get_property(hp, vdev->mp, remote_macaddr_prop, &len);
 err = -ENODEV;
 if (!rmac) {
  pr_err("Port lacks %s property\n", remote_macaddr_prop);
  mdesc_release(hp);
  return err;
 }

 port_id = mdesc_get_property(hp, vdev->mp, id_prop, ((void*)0));
 err = -ENODEV;
 if (!port_id) {
  pr_err("Port lacks %s property\n", id_prop);
  mdesc_release(hp);
  return err;
 }


 vp = vsw_get_vnet(hp, vdev->mp, &handle);
 if (IS_ERR(vp)) {
  err = PTR_ERR(vp);
  pr_err("Failed to get vnet for vsw-port\n");
  mdesc_release(hp);
  return err;
 }

 mdesc_release(hp);

 dev = vsw_alloc_netdev(vsw_port_hwaddr, vdev, handle, *port_id);
 if (IS_ERR(dev)) {
  err = PTR_ERR(dev);
  pr_err("Failed to alloc netdev for vsw-port\n");
  return err;
 }

 port = netdev_priv(dev);

 INIT_LIST_HEAD(&port->list);

 for (i = 0; i < ETH_ALEN; i++)
  port->raddr[i] = (*rmac >> (5 - i) * 8) & 0xff;

 port->vp = vp;
 port->dev = dev;
 port->switch_port = 1;
 port->tso = 0;
 port->tsolen = 0;







 port->vsw = 1;

 err = vio_driver_init(&port->vio, vdev, VDEV_NETWORK,
         vsw_versions, ARRAY_SIZE(vsw_versions),
         &vsw_vio_ops, dev->name);
 if (err)
  goto err_out_free_dev;

 err = vio_ldc_alloc(&port->vio, &vsw_ldc_cfg, port);
 if (err)
  goto err_out_free_dev;

 dev_set_drvdata(&vdev->dev, port);

 netif_napi_add(dev, &port->napi, sunvnet_poll_common,
         NAPI_POLL_WEIGHT);

 spin_lock_irqsave(&vp->lock, flags);
 list_add_rcu(&port->list, &vp->port_list);
 spin_unlock_irqrestore(&vp->lock, flags);

 timer_setup(&port->clean_timer, sunvnet_clean_timer_expire_common, 0);

 err = register_netdev(dev);
 if (err) {
  pr_err("Cannot register net device, aborting\n");
  goto err_out_del_timer;
 }

 spin_lock_irqsave(&vp->lock, flags);
 sunvnet_port_add_txq_common(port);
 spin_unlock_irqrestore(&vp->lock, flags);

 napi_enable(&port->napi);
 vio_port_up(&port->vio);




 netif_carrier_off(dev);

 netdev_info(dev, "LDOM vsw-port %pM\n", dev->dev_addr);

 pr_info("%s: PORT ( remote-mac %pM%s )\n", dev->name,
  port->raddr, " switch-port");

 return 0;

err_out_del_timer:
 del_timer_sync(&port->clean_timer);
 list_del_rcu(&port->list);
 synchronize_rcu();
 netif_napi_del(&port->napi);
 dev_set_drvdata(&vdev->dev, ((void*)0));
 vio_ldc_free(&port->vio);

err_out_free_dev:
 free_netdev(dev);
 return err;
}
