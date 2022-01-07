
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netvsc_device_info {int dummy; } ;
struct netvsc_device {int rcu; struct netvsc_channel* chan_table; } ;
struct TYPE_4__ {int syncp; } ;
struct TYPE_3__ {int syncp; } ;
struct netvsc_channel {int napi; TYPE_2__ rx_stats; TYPE_1__ tx_stats; struct netvsc_device* net_device; int channel; } ;
struct net_device_context {int nvdev; scalar_t__* tx_table; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;


 int ENOMEM ;
 struct netvsc_device* ERR_PTR (int) ;
 int HV_CALL_ISR ;
 int NAPI_POLL_WEIGHT ;
 int RCU_INIT_POINTER (int ,int *) ;
 int VRSS_CHANNEL_MAX ;
 int VRSS_SEND_TAB_SIZE ;
 struct netvsc_device* alloc_net_device () ;
 int free_netvsc_device (int *) ;
 struct net_device* hv_get_drvdata (struct hv_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int netif_napi_del (int *) ;
 int netvsc_channel_cb ;
 int netvsc_connect_vsp (struct hv_device*,struct netvsc_device*,struct netvsc_device_info const*) ;
 int netvsc_poll ;
 int netvsc_ring_bytes ;
 int rcu_assign_pointer (int ,struct netvsc_device*) ;
 int set_channel_read_mode (int ,int ) ;
 int u64_stats_init (int *) ;
 int vmbus_close (int ) ;
 int vmbus_open (int ,int ,int ,int *,int ,int ,struct netvsc_channel*) ;

struct netvsc_device *netvsc_device_add(struct hv_device *device,
    const struct netvsc_device_info *device_info)
{
 int i, ret = 0;
 struct netvsc_device *net_device;
 struct net_device *ndev = hv_get_drvdata(device);
 struct net_device_context *net_device_ctx = netdev_priv(ndev);

 net_device = alloc_net_device();
 if (!net_device)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < VRSS_SEND_TAB_SIZE; i++)
  net_device_ctx->tx_table[i] = 0;




 set_channel_read_mode(device->channel, HV_CALL_ISR);
 for (i = 0; i < VRSS_CHANNEL_MAX; i++) {
  struct netvsc_channel *nvchan = &net_device->chan_table[i];

  nvchan->channel = device->channel;
  nvchan->net_device = net_device;
  u64_stats_init(&nvchan->tx_stats.syncp);
  u64_stats_init(&nvchan->rx_stats.syncp);
 }


 netif_napi_add(ndev, &net_device->chan_table[0].napi,
         netvsc_poll, NAPI_POLL_WEIGHT);


 ret = vmbus_open(device->channel, netvsc_ring_bytes,
    netvsc_ring_bytes, ((void*)0), 0,
    netvsc_channel_cb, net_device->chan_table);

 if (ret != 0) {
  netdev_err(ndev, "unable to open channel: %d\n", ret);
  goto cleanup;
 }


 netdev_dbg(ndev, "hv_netvsc channel opened successfully\n");

 napi_enable(&net_device->chan_table[0].napi);


 ret = netvsc_connect_vsp(device, net_device, device_info);
 if (ret != 0) {
  netdev_err(ndev,
   "unable to connect to NetVSP - %d\n", ret);
  goto close;
 }




 rcu_assign_pointer(net_device_ctx->nvdev, net_device);

 return net_device;

close:
 RCU_INIT_POINTER(net_device_ctx->nvdev, ((void*)0));
 napi_disable(&net_device->chan_table[0].napi);


 vmbus_close(device->channel);

cleanup:
 netif_napi_del(&net_device->chan_table[0].napi);
 free_netvsc_device(&net_device->rcu);

 return ERR_PTR(ret);
}
