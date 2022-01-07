
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netvsc_device {int num_chn; TYPE_1__* chan_table; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;
struct TYPE_2__ {int napi; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 scalar_t__ VERSION_WIN10 ;
 int free_netvsc_device_rcu (struct netvsc_device*) ;
 struct net_device* hv_get_drvdata (struct hv_device*) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int netvsc_revoke_recv_buf (struct hv_device*,struct netvsc_device*,struct net_device*) ;
 int netvsc_revoke_send_buf (struct hv_device*,struct netvsc_device*,struct net_device*) ;
 int netvsc_teardown_recv_gpadl (struct hv_device*,struct netvsc_device*,struct net_device*) ;
 int netvsc_teardown_send_gpadl (struct hv_device*,struct netvsc_device*,struct net_device*) ;
 struct netvsc_device* rtnl_dereference (int ) ;
 int vmbus_close (int ) ;
 scalar_t__ vmbus_proto_version ;

void netvsc_device_remove(struct hv_device *device)
{
 struct net_device *ndev = hv_get_drvdata(device);
 struct net_device_context *net_device_ctx = netdev_priv(ndev);
 struct netvsc_device *net_device
  = rtnl_dereference(net_device_ctx->nvdev);
 int i;





 netvsc_revoke_recv_buf(device, net_device, ndev);
 if (vmbus_proto_version < VERSION_WIN10)
  netvsc_teardown_recv_gpadl(device, net_device, ndev);

 netvsc_revoke_send_buf(device, net_device, ndev);
 if (vmbus_proto_version < VERSION_WIN10)
  netvsc_teardown_send_gpadl(device, net_device, ndev);

 RCU_INIT_POINTER(net_device_ctx->nvdev, ((void*)0));


 for (i = 0; i < net_device->num_chn; i++)
  netif_napi_del(&net_device->chan_table[i].napi);





 netdev_dbg(ndev, "net device safe to remove\n");


 vmbus_close(device->channel);





 if (vmbus_proto_version >= VERSION_WIN10) {
  netvsc_teardown_recv_gpadl(device, net_device, ndev);
  netvsc_teardown_send_gpadl(device, net_device, ndev);
 }


 free_netvsc_device_rcu(net_device);
}
