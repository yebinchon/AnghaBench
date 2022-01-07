
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rndis_message {int ndis_msg_type; int msg_len; } ;
struct netvsc_device {int dummy; } ;
struct netvsc_channel {int dummy; } ;
struct net_device_context {int dummy; } ;
struct net_device {int dummy; } ;


 int NVSP_STAT_FAIL ;
 int NVSP_STAT_SUCCESS ;





 int dump_rndis_message (struct net_device*,struct rndis_message*) ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_rx_status (struct net_device_context*) ;
 int netvsc_linkstatus_callback (struct net_device*,struct rndis_message*) ;
 int rndis_filter_receive_data (struct net_device*,struct netvsc_device*,struct netvsc_channel*,struct rndis_message*,int ) ;
 int rndis_filter_receive_response (struct net_device*,struct netvsc_device*,struct rndis_message*) ;

int rndis_filter_receive(struct net_device *ndev,
    struct netvsc_device *net_dev,
    struct netvsc_channel *nvchan,
    void *data, u32 buflen)
{
 struct net_device_context *net_device_ctx = netdev_priv(ndev);
 struct rndis_message *rndis_msg = data;

 if (netif_msg_rx_status(net_device_ctx))
  dump_rndis_message(ndev, rndis_msg);

 switch (rndis_msg->ndis_msg_type) {
 case 130:
  return rndis_filter_receive_data(ndev, net_dev, nvchan,
       rndis_msg, buflen);
 case 131:
 case 129:
 case 128:

  rndis_filter_receive_response(ndev, net_dev, rndis_msg);
  break;

 case 132:

  netvsc_linkstatus_callback(ndev, rndis_msg);
  break;
 default:
  netdev_err(ndev,
   "unhandled rndis message (type %u len %u)\n",
      rndis_msg->ndis_msg_type,
      rndis_msg->msg_len);
  return NVSP_STAT_FAIL;
 }

 return NVSP_STAT_SUCCESS;
}
