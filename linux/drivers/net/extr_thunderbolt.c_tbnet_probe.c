
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thunderbolt_ip_frame_header {int dummy; } ;
struct TYPE_3__ {struct tbnet* data; int callback; int * uuid; } ;
struct tbnet {TYPE_1__ handler; int napi; struct tb_xdomain* xd; struct net_device* dev; struct tb_service* svc; int frame_id; int command_id; int connection_lock; int disconnect_work; int connected_work; int login_work; } ;
struct tb_xdomain {int dummy; } ;
struct tb_service_id {int dummy; } ;
struct tb_service {int dev; } ;
struct net_device {int hw_features; int features; int hard_header_len; scalar_t__ max_mtu; int min_mtu; int * netdev_ops; int name; } ;


 int ENOMEM ;
 scalar_t__ ETH_HLEN ;
 int ETH_MIN_MTU ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int NAPI_POLL_WEIGHT ;
 int NETIF_F_ALL_TSO ;
 int NETIF_F_GRO ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 scalar_t__ TBNET_MAX_MTU ;
 struct net_device* alloc_etherdev (int) ;
 int atomic_set (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int mutex_init (int *) ;
 struct tbnet* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int strcpy (int ,char*) ;
 int tb_register_protocol_handler (TYPE_1__*) ;
 struct tb_xdomain* tb_service_parent (struct tb_service*) ;
 int tb_service_set_drvdata (struct tb_service*,struct tbnet*) ;
 int tb_unregister_protocol_handler (TYPE_1__*) ;
 int tbnet_connected_work ;
 int tbnet_disconnect_work ;
 int tbnet_generate_mac (struct net_device*) ;
 int tbnet_handle_packet ;
 int tbnet_login_work ;
 int tbnet_netdev_ops ;
 int tbnet_poll ;
 int tbnet_svc_uuid ;

__attribute__((used)) static int tbnet_probe(struct tb_service *svc, const struct tb_service_id *id)
{
 struct tb_xdomain *xd = tb_service_parent(svc);
 struct net_device *dev;
 struct tbnet *net;
 int ret;

 dev = alloc_etherdev(sizeof(*net));
 if (!dev)
  return -ENOMEM;

 SET_NETDEV_DEV(dev, &svc->dev);

 net = netdev_priv(dev);
 INIT_DELAYED_WORK(&net->login_work, tbnet_login_work);
 INIT_WORK(&net->connected_work, tbnet_connected_work);
 INIT_WORK(&net->disconnect_work, tbnet_disconnect_work);
 mutex_init(&net->connection_lock);
 atomic_set(&net->command_id, 0);
 atomic_set(&net->frame_id, 0);
 net->svc = svc;
 net->dev = dev;
 net->xd = xd;

 tbnet_generate_mac(dev);

 strcpy(dev->name, "thunderbolt%d");
 dev->netdev_ops = &tbnet_netdev_ops;
 dev->hw_features = NETIF_F_SG | NETIF_F_ALL_TSO | NETIF_F_GRO |
      NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
 dev->features = dev->hw_features | NETIF_F_HIGHDMA;
 dev->hard_header_len += sizeof(struct thunderbolt_ip_frame_header);

 netif_napi_add(dev, &net->napi, tbnet_poll, NAPI_POLL_WEIGHT);


 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = TBNET_MAX_MTU - ETH_HLEN;

 net->handler.uuid = &tbnet_svc_uuid;
 net->handler.callback = tbnet_handle_packet,
 net->handler.data = net;
 tb_register_protocol_handler(&net->handler);

 tb_service_set_drvdata(svc, net);

 ret = register_netdev(dev);
 if (ret) {
  tb_unregister_protocol_handler(&net->handler);
  free_netdev(dev);
  return ret;
 }

 return 0;
}
