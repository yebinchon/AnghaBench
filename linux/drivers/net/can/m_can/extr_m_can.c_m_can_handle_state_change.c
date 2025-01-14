
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device_stats {int rx_bytes; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct TYPE_3__ {int bus_off; int error_passive; int error_warning; } ;
struct TYPE_4__ {int state; TYPE_1__ can_stats; } ;
struct m_can_classdev {TYPE_2__ can; } ;
struct can_frame {int* data; scalar_t__ can_dlc; int can_id; } ;
struct can_berr_counter {int txerr; int rxerr; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;



 int CAN_STATE_ERROR_WARNING ;
 unsigned int ECR_RP ;
 int M_CAN_ECR ;
 int __m_can_get_berr_counter (struct net_device*,struct can_berr_counter*) ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int can_bus_off (struct net_device*) ;
 int m_can_disable_all_interrupts (struct m_can_classdev*) ;
 unsigned int m_can_read (struct m_can_classdev*,int ) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int m_can_handle_state_change(struct net_device *dev,
         enum can_state new_state)
{
 struct m_can_classdev *cdev = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 struct can_berr_counter bec;
 unsigned int ecr;

 switch (new_state) {
 case 129:

  cdev->can.can_stats.error_warning++;
  cdev->can.state = CAN_STATE_ERROR_WARNING;
  break;
 case 128:

  cdev->can.can_stats.error_passive++;
  cdev->can.state = 128;
  break;
 case 130:

  cdev->can.state = 130;
  m_can_disable_all_interrupts(cdev);
  cdev->can.can_stats.bus_off++;
  can_bus_off(dev);
  break;
 default:
  break;
 }


 skb = alloc_can_err_skb(dev, &cf);
 if (unlikely(!skb))
  return 0;

 __m_can_get_berr_counter(dev, &bec);

 switch (new_state) {
 case 129:

  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] = (bec.txerr > bec.rxerr) ?
   CAN_ERR_CRTL_TX_WARNING :
   CAN_ERR_CRTL_RX_WARNING;
  cf->data[6] = bec.txerr;
  cf->data[7] = bec.rxerr;
  break;
 case 128:

  cf->can_id |= CAN_ERR_CRTL;
  ecr = m_can_read(cdev, M_CAN_ECR);
  if (ecr & ECR_RP)
   cf->data[1] |= CAN_ERR_CRTL_RX_PASSIVE;
  if (bec.txerr > 127)
   cf->data[1] |= CAN_ERR_CRTL_TX_PASSIVE;
  cf->data[6] = bec.txerr;
  cf->data[7] = bec.rxerr;
  break;
 case 130:

  cf->can_id |= CAN_ERR_BUSOFF;
  break;
 default:
  break;
 }

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_receive_skb(skb);

 return 1;
}
