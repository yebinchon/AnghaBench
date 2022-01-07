
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmpacket_descriptor {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct TYPE_2__ {int msg_type; } ;
struct nvsp_message {TYPE_1__ hdr; } ;
struct netvsc_device {int channel_init_wait; int channel_init_pkt; } ;
struct net_device {int dummy; } ;







 int complete (int *) ;
 struct nvsp_message* hv_pkt_data (struct vmpacket_descriptor const*) ;
 int memcpy (int *,struct nvsp_message const*,int) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netvsc_send_tx_complete (struct net_device*,struct netvsc_device*,struct vmbus_channel*,struct vmpacket_descriptor const*,int) ;

__attribute__((used)) static void netvsc_send_completion(struct net_device *ndev,
       struct netvsc_device *net_device,
       struct vmbus_channel *incoming_channel,
       const struct vmpacket_descriptor *desc,
       int budget)
{
 const struct nvsp_message *nvsp_packet = hv_pkt_data(desc);

 switch (nvsp_packet->hdr.msg_type) {
 case 128:
 case 132:
 case 130:
 case 129:

  memcpy(&net_device->channel_init_pkt, nvsp_packet,
         sizeof(struct nvsp_message));
  complete(&net_device->channel_init_wait);
  break;

 case 131:
  netvsc_send_tx_complete(ndev, net_device, incoming_channel,
     desc, budget);
  break;

 default:
  netdev_err(ndev,
      "Unknown send completion type %d received!!\n",
      nvsp_packet->hdr.msg_type);
 }
}
