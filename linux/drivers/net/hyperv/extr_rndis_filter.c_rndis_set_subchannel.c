
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rndis_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ status; int num_subchannels; } ;
struct TYPE_7__ {int num_subchannels; int op; } ;
struct TYPE_9__ {TYPE_3__ subchn_comp; TYPE_2__ subchn_req; } ;
struct TYPE_10__ {TYPE_4__ v5_msg; } ;
struct TYPE_6__ {int msg_type; } ;
struct nvsp_message {TYPE_5__ msg; TYPE_1__ hdr; } ;
struct netvsc_device_info {int rss_key; } ;
struct netvsc_device {int num_chn; int open_chn; int subchan_open; int channel_init_wait; struct rndis_device* extension; struct nvsp_message channel_init_pkt; } ;
struct net_device_context {int* tx_table; struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int channel; } ;


 int ASSERT_RTNL () ;
 int EIO ;
 int NVSP_MSG5_TYPE_SUBCHANNEL ;
 scalar_t__ NVSP_STAT_SUCCESS ;
 int NVSP_SUBCHANNEL_ALLOCATE ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 int VRSS_SEND_TAB_SIZE ;
 int atomic_read (int *) ;
 int memset (struct nvsp_message*,int ,int) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int) ;
 int netif_set_real_num_tx_queues (struct net_device*,int) ;
 int netvsc_hash_key ;
 int rndis_filter_set_rss_param (struct rndis_device*,int ) ;
 int trace_nvsp_send (struct net_device*,struct nvsp_message*) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,unsigned long,int ,int ) ;
 int wait_event (int ,int) ;
 int wait_for_completion (int *) ;

int rndis_set_subchannel(struct net_device *ndev,
    struct netvsc_device *nvdev,
    struct netvsc_device_info *dev_info)
{
 struct nvsp_message *init_packet = &nvdev->channel_init_pkt;
 struct net_device_context *ndev_ctx = netdev_priv(ndev);
 struct hv_device *hv_dev = ndev_ctx->device_ctx;
 struct rndis_device *rdev = nvdev->extension;
 int i, ret;

 ASSERT_RTNL();

 memset(init_packet, 0, sizeof(struct nvsp_message));
 init_packet->hdr.msg_type = NVSP_MSG5_TYPE_SUBCHANNEL;
 init_packet->msg.v5_msg.subchn_req.op = NVSP_SUBCHANNEL_ALLOCATE;
 init_packet->msg.v5_msg.subchn_req.num_subchannels =
      nvdev->num_chn - 1;
 trace_nvsp_send(ndev, init_packet);

 ret = vmbus_sendpacket(hv_dev->channel, init_packet,
          sizeof(struct nvsp_message),
          (unsigned long)init_packet,
          VM_PKT_DATA_INBAND,
          VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 if (ret) {
  netdev_err(ndev, "sub channel allocate send failed: %d\n", ret);
  return ret;
 }

 wait_for_completion(&nvdev->channel_init_wait);
 if (init_packet->msg.v5_msg.subchn_comp.status != NVSP_STAT_SUCCESS) {
  netdev_err(ndev, "sub channel request failed\n");
  return -EIO;
 }

 nvdev->num_chn = 1 +
  init_packet->msg.v5_msg.subchn_comp.num_subchannels;


 wait_event(nvdev->subchan_open,
     atomic_read(&nvdev->open_chn) == nvdev->num_chn);


 if (dev_info)
  rndis_filter_set_rss_param(rdev, dev_info->rss_key);
 else
  rndis_filter_set_rss_param(rdev, netvsc_hash_key);

 netif_set_real_num_tx_queues(ndev, nvdev->num_chn);
 netif_set_real_num_rx_queues(ndev, nvdev->num_chn);

 for (i = 0; i < VRSS_SEND_TAB_SIZE; i++)
  ndev_ctx->tx_table[i] = i % nvdev->num_chn;

 return 0;
}
