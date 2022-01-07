
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_5__ {scalar_t__ sub_channel_index; } ;
struct TYPE_6__ {TYPE_2__ offer; } ;
struct vmbus_channel {TYPE_3__ offermsg; TYPE_1__* primary_channel; } ;
struct netvsc_device {scalar_t__ num_chn; int subchan_open; int open_chn; struct netvsc_channel* chan_table; } ;
struct netvsc_channel {int napi; struct vmbus_channel* channel; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int device_obj; } ;


 int HV_CALL_ISR ;
 scalar_t__ atomic_inc_return (int *) ;
 struct net_device* hv_get_drvdata (int ) ;
 int napi_enable (int *) ;
 int netdev_notice (struct net_device*,char*,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_channel_cb ;
 int netvsc_ring_bytes ;
 struct netvsc_device* rcu_dereference_raw (int ) ;
 int set_channel_read_mode (struct vmbus_channel*,int ) ;
 int vmbus_open (struct vmbus_channel*,int ,int ,int *,int ,int ,struct netvsc_channel*) ;
 int wake_up (int *) ;

__attribute__((used)) static void netvsc_sc_open(struct vmbus_channel *new_sc)
{
 struct net_device *ndev =
  hv_get_drvdata(new_sc->primary_channel->device_obj);
 struct net_device_context *ndev_ctx = netdev_priv(ndev);
 struct netvsc_device *nvscdev;
 u16 chn_index = new_sc->offermsg.offer.sub_channel_index;
 struct netvsc_channel *nvchan;
 int ret;




 nvscdev = rcu_dereference_raw(ndev_ctx->nvdev);
 if (!nvscdev || chn_index >= nvscdev->num_chn)
  return;

 nvchan = nvscdev->chan_table + chn_index;




 set_channel_read_mode(new_sc, HV_CALL_ISR);


 nvchan->channel = new_sc;

 ret = vmbus_open(new_sc, netvsc_ring_bytes,
    netvsc_ring_bytes, ((void*)0), 0,
    netvsc_channel_cb, nvchan);
 if (ret == 0)
  napi_enable(&nvchan->napi);
 else
  netdev_notice(ndev, "sub channel open failed: %d\n", ret);

 if (atomic_inc_return(&nvscdev->open_chn) == nvscdev->num_chn)
  wake_up(&nvscdev->subchan_open);
}
