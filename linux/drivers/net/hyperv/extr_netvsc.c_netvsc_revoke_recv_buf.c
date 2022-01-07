
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_2__ revoke_recv_buf; } ;
struct TYPE_9__ {TYPE_3__ v1_msg; } ;
struct TYPE_6__ {int msg_type; } ;
struct nvsp_message {TYPE_4__ msg; TYPE_1__ hdr; } ;
struct netvsc_device {scalar_t__ recv_section_cnt; struct nvsp_message revoke_packet; } ;
struct net_device {int dummy; } ;
struct hv_device {TYPE_5__* channel; } ;
struct TYPE_10__ {scalar_t__ rescind; } ;


 int NETVSC_RECEIVE_BUFFER_ID ;
 int NVSP_MSG1_TYPE_REVOKE_RECV_BUF ;
 int VM_PKT_DATA_INBAND ;
 int memset (struct nvsp_message*,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 int trace_nvsp_send (struct net_device*,struct nvsp_message*) ;
 int vmbus_sendpacket (TYPE_5__*,struct nvsp_message*,int,unsigned long,int ,int ) ;

__attribute__((used)) static void netvsc_revoke_recv_buf(struct hv_device *device,
       struct netvsc_device *net_device,
       struct net_device *ndev)
{
 struct nvsp_message *revoke_packet;
 int ret;







 if (net_device->recv_section_cnt) {

  revoke_packet = &net_device->revoke_packet;
  memset(revoke_packet, 0, sizeof(struct nvsp_message));

  revoke_packet->hdr.msg_type =
   NVSP_MSG1_TYPE_REVOKE_RECV_BUF;
  revoke_packet->msg.v1_msg.
  revoke_recv_buf.id = NETVSC_RECEIVE_BUFFER_ID;

  trace_nvsp_send(ndev, revoke_packet);

  ret = vmbus_sendpacket(device->channel,
           revoke_packet,
           sizeof(struct nvsp_message),
           (unsigned long)revoke_packet,
           VM_PKT_DATA_INBAND, 0);





  if (device->channel->rescind)
   ret = 0;




  if (ret != 0) {
   netdev_err(ndev, "unable to send "
    "revoke receive buffer to netvsp\n");
   return;
  }
  net_device->recv_section_cnt = 0;
 }
}
