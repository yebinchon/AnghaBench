
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpacket_descriptor {int type; int trans_id; } ;
struct vmbus_channel {int dummy; } ;
struct nvsp_message {int dummy; } ;
struct netvsc_device {int dummy; } ;
struct netvsc_channel {struct vmbus_channel* channel; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;





 struct nvsp_message* hv_pkt_data (struct vmpacket_descriptor const*) ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int netvsc_receive (struct net_device*,struct netvsc_device*,struct netvsc_channel*,struct vmpacket_descriptor const*,struct nvsp_message const*) ;
 int netvsc_receive_inband (struct net_device*,struct nvsp_message const*) ;
 int netvsc_send_completion (struct net_device*,struct netvsc_device*,struct vmbus_channel*,struct vmpacket_descriptor const*,int) ;
 int trace_nvsp_recv (struct net_device*,struct vmbus_channel*,struct nvsp_message const*) ;

__attribute__((used)) static int netvsc_process_raw_pkt(struct hv_device *device,
      struct netvsc_channel *nvchan,
      struct netvsc_device *net_device,
      struct net_device *ndev,
      const struct vmpacket_descriptor *desc,
      int budget)
{
 struct vmbus_channel *channel = nvchan->channel;
 const struct nvsp_message *nvmsg = hv_pkt_data(desc);

 trace_nvsp_recv(ndev, channel, nvmsg);

 switch (desc->type) {
 case 130:
  netvsc_send_completion(ndev, net_device, channel,
           desc, budget);
  break;

 case 128:
  return netvsc_receive(ndev, net_device, nvchan,
          desc, nvmsg);
  break;

 case 129:
  netvsc_receive_inband(ndev, nvmsg);
  break;

 default:
  netdev_err(ndev, "unhandled packet type %d, tid %llx\n",
      desc->type, desc->trans_id);
  break;
 }

 return 0;
}
