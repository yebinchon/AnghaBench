
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct vmbus_channel {scalar_t__ rescind; int outbound; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int msg_type; } ;
struct nvsp_1_message_send_rndis_packet {int channel_type; scalar_t__ send_buf_section_index; scalar_t__ send_buf_section_size; } ;
struct TYPE_5__ {struct nvsp_1_message_send_rndis_packet send_rndis_pkt; } ;
struct TYPE_6__ {TYPE_1__ v1_msg; } ;
struct nvsp_message {TYPE_3__ hdr; TYPE_2__ msg; } ;
struct netvsc_device {int tx_disable; struct netvsc_channel* chan_table; } ;
struct netvsc_channel {int queue_sends; struct vmbus_channel* channel; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_8__ {int wake_queue; int stop_queue; } ;
struct net_device_context {TYPE_4__ eth_stats; } ;
struct net_device {int dummy; } ;
struct hv_page_buffer {int dummy; } ;
struct hv_netvsc_packet {size_t q_idx; scalar_t__ send_buf_index; scalar_t__ total_data_buflen; int page_buf_cnt; int rmsg_pgcnt; scalar_t__ cp_partial; } ;
struct hv_device {int dummy; } ;
typedef int nvmsg ;


 int EAGAIN ;
 int ENODEV ;
 int ENOSPC ;
 scalar_t__ NETVSC_INVALID_INDEX ;
 int NVSP_MSG1_TYPE_SEND_RNDIS_PKT ;
 scalar_t__ RING_AVAIL_PERCENT_LOWATER ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 scalar_t__ hv_get_avail_to_write_percent (int *) ;
 struct net_device* hv_get_drvdata (struct hv_device*) ;
 int netdev_err (struct net_device*,char*,int ,scalar_t__,int) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,size_t) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int trace_nvsp_send_pkt (struct net_device*,struct vmbus_channel*,struct nvsp_1_message_send_rndis_packet*) ;
 int vmbus_sendpacket (struct vmbus_channel*,struct nvsp_message*,int,scalar_t__,int ,int ) ;
 int vmbus_sendpacket_pagebuffer (struct vmbus_channel*,struct hv_page_buffer*,int ,struct nvsp_message*,int,scalar_t__) ;

__attribute__((used)) static inline int netvsc_send_pkt(
 struct hv_device *device,
 struct hv_netvsc_packet *packet,
 struct netvsc_device *net_device,
 struct hv_page_buffer *pb,
 struct sk_buff *skb)
{
 struct nvsp_message nvmsg;
 struct nvsp_1_message_send_rndis_packet *rpkt =
  &nvmsg.msg.v1_msg.send_rndis_pkt;
 struct netvsc_channel * const nvchan =
  &net_device->chan_table[packet->q_idx];
 struct vmbus_channel *out_channel = nvchan->channel;
 struct net_device *ndev = hv_get_drvdata(device);
 struct net_device_context *ndev_ctx = netdev_priv(ndev);
 struct netdev_queue *txq = netdev_get_tx_queue(ndev, packet->q_idx);
 u64 req_id;
 int ret;
 u32 ring_avail = hv_get_avail_to_write_percent(&out_channel->outbound);

 nvmsg.hdr.msg_type = NVSP_MSG1_TYPE_SEND_RNDIS_PKT;
 if (skb)
  rpkt->channel_type = 0;
 else
  rpkt->channel_type = 1;

 rpkt->send_buf_section_index = packet->send_buf_index;
 if (packet->send_buf_index == NETVSC_INVALID_INDEX)
  rpkt->send_buf_section_size = 0;
 else
  rpkt->send_buf_section_size = packet->total_data_buflen;

 req_id = (ulong)skb;

 if (out_channel->rescind)
  return -ENODEV;

 trace_nvsp_send_pkt(ndev, out_channel, rpkt);

 if (packet->page_buf_cnt) {
  if (packet->cp_partial)
   pb += packet->rmsg_pgcnt;

  ret = vmbus_sendpacket_pagebuffer(out_channel,
        pb, packet->page_buf_cnt,
        &nvmsg, sizeof(nvmsg),
        req_id);
 } else {
  ret = vmbus_sendpacket(out_channel,
           &nvmsg, sizeof(nvmsg),
           req_id, VM_PKT_DATA_INBAND,
           VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 }

 if (ret == 0) {
  atomic_inc_return(&nvchan->queue_sends);

  if (ring_avail < RING_AVAIL_PERCENT_LOWATER) {
   netif_tx_stop_queue(txq);
   ndev_ctx->eth_stats.stop_queue++;
  }
 } else if (ret == -EAGAIN) {
  netif_tx_stop_queue(txq);
  ndev_ctx->eth_stats.stop_queue++;
 } else {
  netdev_err(ndev,
      "Unable to send packet pages %u len %u, ret %d\n",
      packet->page_buf_cnt, packet->total_data_buflen,
      ret);
 }

 if (netif_tx_queue_stopped(txq) &&
     atomic_read(&nvchan->queue_sends) < 1 &&
     !net_device->tx_disable) {
  netif_tx_wake_queue(txq);
  ndev_ctx->eth_stats.wake_queue++;
  if (ret == -EAGAIN)
   ret = -ENOSPC;
 }

 return ret;
}
