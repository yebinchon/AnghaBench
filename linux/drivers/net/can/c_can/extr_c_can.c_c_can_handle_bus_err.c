
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; int * data; } ;
struct TYPE_3__ {int bus_error; } ;
struct TYPE_4__ {int ctrlmode; TYPE_1__ can_stats; } ;
struct c_can_priv {TYPE_2__ can; } ;
typedef enum c_can_lec_type { ____Placeholder_c_can_lec_type } c_can_lec_type ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_ERR_BUSERROR ;
 int CAN_ERR_PROT ;
 int CAN_ERR_PROT_BIT0 ;
 int CAN_ERR_PROT_BIT1 ;
 int CAN_ERR_PROT_FORM ;
 int CAN_ERR_PROT_LOC_ACK ;
 int CAN_ERR_PROT_LOC_CRC_SEQ ;
 int CAN_ERR_PROT_STUFF ;





 int LEC_NO_ERROR ;

 int LEC_UNUSED ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int c_can_handle_bus_err(struct net_device *dev,
    enum c_can_lec_type lec_type)
{
 struct c_can_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;






 if (lec_type == LEC_UNUSED || lec_type == LEC_NO_ERROR)
  return 0;

 if (!(priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING))
  return 0;


 priv->can.can_stats.bus_error++;
 stats->rx_errors++;


 skb = alloc_can_err_skb(dev, &cf);
 if (unlikely(!skb))
  return 0;





 cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;

 switch (lec_type) {
 case 128:
  netdev_dbg(dev, "stuff error\n");
  cf->data[2] |= CAN_ERR_PROT_STUFF;
  break;
 case 129:
  netdev_dbg(dev, "form error\n");
  cf->data[2] |= CAN_ERR_PROT_FORM;
  break;
 case 133:
  netdev_dbg(dev, "ack error\n");
  cf->data[3] = CAN_ERR_PROT_LOC_ACK;
  break;
 case 131:
  netdev_dbg(dev, "bit1 error\n");
  cf->data[2] |= CAN_ERR_PROT_BIT1;
  break;
 case 132:
  netdev_dbg(dev, "bit0 error\n");
  cf->data[2] |= CAN_ERR_PROT_BIT0;
  break;
 case 130:
  netdev_dbg(dev, "CRC error\n");
  cf->data[3] = CAN_ERR_PROT_LOC_CRC_SEQ;
  break;
 default:
  break;
 }

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_receive_skb(skb);
 return 1;
}
