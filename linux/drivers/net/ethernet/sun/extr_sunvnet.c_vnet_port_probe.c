
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vnet_port {int* raddr; int switch_port; int tso; int vio; int napi; int clean_timer; int hash; int list; scalar_t__ tsolen; struct vnet* vp; } ;
struct vnet {TYPE_1__* dev; int lock; int * port_hash; int port_list; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int dev; int mp; } ;
struct mdesc_handle {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct vnet*) ;
 int NAPI_POLL_WEIGHT ;
 int PTR_ERR (struct vnet*) ;
 int VDEV_NETWORK ;
 int dev_set_drvdata (int *,struct vnet_port*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int kfree (struct vnet_port*) ;
 struct vnet_port* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int* mdesc_get_property (struct mdesc_handle*,int ,char*,int*) ;
 struct mdesc_handle* mdesc_grab () ;
 int mdesc_release (struct mdesc_handle*) ;
 int napi_enable (int *) ;
 int netif_napi_add (TYPE_1__*,int *,int ,int ) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,int*,char*) ;
 char* remote_macaddr_prop ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunvnet_clean_timer_expire_common ;
 int sunvnet_poll_common ;
 int sunvnet_port_add_txq_common (struct vnet_port*) ;
 int timer_setup (int *,int ,int ) ;
 int vio_driver_init (int *,struct vio_dev*,int ,int ,int ,int *,int ) ;
 int vio_ldc_alloc (int *,int *,struct vnet_port*) ;
 int vio_port_up (int *) ;
 struct vnet* vnet_find_parent (struct mdesc_handle*,int ,struct vio_dev*) ;
 size_t vnet_hashfn (int*) ;
 int vnet_ldc_cfg ;
 int vnet_versions ;
 int vnet_vio_ops ;

__attribute__((used)) static int vnet_port_probe(struct vio_dev *vdev, const struct vio_device_id *id)
{
 struct mdesc_handle *hp;
 struct vnet_port *port;
 unsigned long flags;
 struct vnet *vp;
 const u64 *rmac;
 int len, i, err, switch_port;

 hp = mdesc_grab();

 vp = vnet_find_parent(hp, vdev->mp, vdev);
 if (IS_ERR(vp)) {
  pr_err("Cannot find port parent vnet\n");
  err = PTR_ERR(vp);
  goto err_out_put_mdesc;
 }

 rmac = mdesc_get_property(hp, vdev->mp, remote_macaddr_prop, &len);
 err = -ENODEV;
 if (!rmac) {
  pr_err("Port lacks %s property\n", remote_macaddr_prop);
  goto err_out_put_mdesc;
 }

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 err = -ENOMEM;
 if (!port)
  goto err_out_put_mdesc;

 for (i = 0; i < ETH_ALEN; i++)
  port->raddr[i] = (*rmac >> (5 - i) * 8) & 0xff;

 port->vp = vp;

 err = vio_driver_init(&port->vio, vdev, VDEV_NETWORK,
         vnet_versions, ARRAY_SIZE(vnet_versions),
         &vnet_vio_ops, vp->dev->name);
 if (err)
  goto err_out_free_port;

 err = vio_ldc_alloc(&port->vio, &vnet_ldc_cfg, port);
 if (err)
  goto err_out_free_port;

 netif_napi_add(port->vp->dev, &port->napi, sunvnet_poll_common,
         NAPI_POLL_WEIGHT);

 INIT_HLIST_NODE(&port->hash);
 INIT_LIST_HEAD(&port->list);

 switch_port = 0;
 if (mdesc_get_property(hp, vdev->mp, "switch-port", ((void*)0)))
  switch_port = 1;
 port->switch_port = switch_port;
 port->tso = 1;
 port->tsolen = 0;

 spin_lock_irqsave(&vp->lock, flags);
 if (switch_port)
  list_add_rcu(&port->list, &vp->port_list);
 else
  list_add_tail_rcu(&port->list, &vp->port_list);
 hlist_add_head_rcu(&port->hash,
      &vp->port_hash[vnet_hashfn(port->raddr)]);
 sunvnet_port_add_txq_common(port);
 spin_unlock_irqrestore(&vp->lock, flags);

 dev_set_drvdata(&vdev->dev, port);

 pr_info("%s: PORT ( remote-mac %pM%s )\n",
  vp->dev->name, port->raddr, switch_port ? " switch-port" : "");

 timer_setup(&port->clean_timer, sunvnet_clean_timer_expire_common, 0);

 napi_enable(&port->napi);
 vio_port_up(&port->vio);

 mdesc_release(hp);

 return 0;

err_out_free_port:
 kfree(port);

err_out_put_mdesc:
 mdesc_release(hp);
 return err;
}
