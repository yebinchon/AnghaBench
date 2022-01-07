
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pucan_msg {int dummy; } ;
struct peak_usb_device {struct net_device* netdev; } ;
struct pcan_usb_fd_if {int time_ref; struct peak_usb_device** dev; } ;
struct pcan_ufd_ovr_msg {int ts_low; } ;
struct TYPE_2__ {int rx_errors; int rx_over_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct can_frame {int * data; int can_id; } ;


 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int ENOMEM ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int le32_to_cpu (int ) ;
 int peak_usb_netif_rx (struct sk_buff*,int *,int ) ;
 size_t pufd_omsg_get_channel (struct pcan_ufd_ovr_msg*) ;

__attribute__((used)) static int pcan_usb_fd_decode_overrun(struct pcan_usb_fd_if *usb_if,
          struct pucan_msg *rx_msg)
{
 struct pcan_ufd_ovr_msg *ov = (struct pcan_ufd_ovr_msg *)rx_msg;
 struct peak_usb_device *dev = usb_if->dev[pufd_omsg_get_channel(ov)];
 struct net_device *netdev = dev->netdev;
 struct can_frame *cf;
 struct sk_buff *skb;


 skb = alloc_can_err_skb(netdev, &cf);
 if (!skb)
  return -ENOMEM;

 cf->can_id |= CAN_ERR_CRTL;
 cf->data[1] |= CAN_ERR_CRTL_RX_OVERFLOW;

 peak_usb_netif_rx(skb, &usb_if->time_ref, le32_to_cpu(ov->ts_low));

 netdev->stats.rx_over_errors++;
 netdev->stats.rx_errors++;

 return 0;
}
