
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_13__ {int ieee8021q; int sriov; int teaming; int rsc; } ;
struct TYPE_14__ {TYPE_5__ capability; scalar_t__ mtu; } ;
struct TYPE_15__ {TYPE_6__ send_ndis_config; } ;
struct TYPE_10__ {scalar_t__ status; } ;
struct TYPE_9__ {scalar_t__ max_protocol_ver; scalar_t__ min_protocol_ver; } ;
struct TYPE_11__ {TYPE_2__ init_complete; TYPE_1__ init; } ;
struct TYPE_16__ {TYPE_7__ v2_msg; TYPE_3__ init_msg; } ;
struct TYPE_12__ {int msg_type; } ;
struct nvsp_message {TYPE_8__ msg; TYPE_4__ hdr; } ;
struct netvsc_device {int channel_init_wait; } ;
struct net_device {scalar_t__ mtu; } ;
struct hv_device {int channel; } ;


 int EINVAL ;
 scalar_t__ ETH_HLEN ;
 int NVSP_MSG2_TYPE_SEND_NDIS_CONFIG ;
 int NVSP_MSG_TYPE_INIT ;
 scalar_t__ NVSP_PROTOCOL_VERSION_1 ;
 scalar_t__ NVSP_PROTOCOL_VERSION_5 ;
 scalar_t__ NVSP_PROTOCOL_VERSION_61 ;
 scalar_t__ NVSP_STAT_SUCCESS ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 struct net_device* hv_get_drvdata (struct hv_device*) ;
 int memset (struct nvsp_message*,int ,int) ;
 int trace_nvsp_send (struct net_device*,struct nvsp_message*) ;
 int vmbus_sendpacket (int ,struct nvsp_message*,int,unsigned long,int ,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int negotiate_nvsp_ver(struct hv_device *device,
         struct netvsc_device *net_device,
         struct nvsp_message *init_packet,
         u32 nvsp_ver)
{
 struct net_device *ndev = hv_get_drvdata(device);
 int ret;

 memset(init_packet, 0, sizeof(struct nvsp_message));
 init_packet->hdr.msg_type = NVSP_MSG_TYPE_INIT;
 init_packet->msg.init_msg.init.min_protocol_ver = nvsp_ver;
 init_packet->msg.init_msg.init.max_protocol_ver = nvsp_ver;
 trace_nvsp_send(ndev, init_packet);


 ret = vmbus_sendpacket(device->channel, init_packet,
          sizeof(struct nvsp_message),
          (unsigned long)init_packet,
          VM_PKT_DATA_INBAND,
          VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);

 if (ret != 0)
  return ret;

 wait_for_completion(&net_device->channel_init_wait);

 if (init_packet->msg.init_msg.init_complete.status !=
     NVSP_STAT_SUCCESS)
  return -EINVAL;

 if (nvsp_ver == NVSP_PROTOCOL_VERSION_1)
  return 0;


 memset(init_packet, 0, sizeof(struct nvsp_message));
 init_packet->hdr.msg_type = NVSP_MSG2_TYPE_SEND_NDIS_CONFIG;
 init_packet->msg.v2_msg.send_ndis_config.mtu = ndev->mtu + ETH_HLEN;
 init_packet->msg.v2_msg.send_ndis_config.capability.ieee8021q = 1;

 if (nvsp_ver >= NVSP_PROTOCOL_VERSION_5) {
  init_packet->msg.v2_msg.send_ndis_config.capability.sriov = 1;


  init_packet->msg.v2_msg.send_ndis_config.capability.teaming = 1;
 }

 if (nvsp_ver >= NVSP_PROTOCOL_VERSION_61)
  init_packet->msg.v2_msg.send_ndis_config.capability.rsc = 1;

 trace_nvsp_send(ndev, init_packet);

 ret = vmbus_sendpacket(device->channel, init_packet,
    sizeof(struct nvsp_message),
    (unsigned long)init_packet,
    VM_PKT_DATA_INBAND, 0);

 return ret;
}
