
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int active_datapath; } ;
struct TYPE_7__ {TYPE_2__ active_dp; } ;
struct TYPE_8__ {TYPE_3__ v4_msg; } ;
struct TYPE_5__ {int msg_type; } ;
struct nvsp_message {TYPE_4__ msg; TYPE_1__ hdr; } ;
struct netvsc_device {struct nvsp_message channel_init_pkt; } ;
struct net_device_context {int nvdev; struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;


 int NVSP_DATAPATH_SYNTHETIC ;
 int NVSP_DATAPATH_VF ;
 int NVSP_MSG4_TYPE_SWITCH_DATA_PATH ;
 int VM_PKT_DATA_INBAND ;
 int memset (struct nvsp_message*,int ,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 struct netvsc_device* rtnl_dereference (int ) ;
 int trace_nvsp_send (struct net_device*,struct nvsp_message*) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,unsigned long,int ,int ) ;

void netvsc_switch_datapath(struct net_device *ndev, bool vf)
{
 struct net_device_context *net_device_ctx = netdev_priv(ndev);
 struct hv_device *dev = net_device_ctx->device_ctx;
 struct netvsc_device *nv_dev = rtnl_dereference(net_device_ctx->nvdev);
 struct nvsp_message *init_pkt = &nv_dev->channel_init_pkt;

 memset(init_pkt, 0, sizeof(struct nvsp_message));
 init_pkt->hdr.msg_type = NVSP_MSG4_TYPE_SWITCH_DATA_PATH;
 if (vf)
  init_pkt->msg.v4_msg.active_dp.active_datapath =
   NVSP_DATAPATH_VF;
 else
  init_pkt->msg.v4_msg.active_dp.active_datapath =
   NVSP_DATAPATH_SYNTHETIC;

 trace_nvsp_send(ndev, init_pkt);

 vmbus_sendpacket(dev->channel, init_pkt,
          sizeof(struct nvsp_message),
          (unsigned long)init_pkt,
          VM_PKT_DATA_INBAND, 0);
}
