
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;
 unsigned int ETH_FCS_LEN ;
 unsigned int ETH_HLEN ;
 int PAGE_SIZE ;
 unsigned int VLAN_HLEN ;
 unsigned int XLGMAC_JUMBO_PACKET_MTU ;
 unsigned int XLGMAC_RX_BUF_ALIGN ;
 int XLGMAC_RX_MIN_BUF_SIZE ;
 unsigned int clamp_val (unsigned int,int ,int ) ;
 int netdev_alert (struct net_device*,char*) ;

__attribute__((used)) static int xlgmac_calc_rx_buf_size(struct net_device *netdev, unsigned int mtu)
{
 unsigned int rx_buf_size;

 if (mtu > XLGMAC_JUMBO_PACKET_MTU) {
  netdev_alert(netdev, "MTU exceeds maximum supported value\n");
  return -EINVAL;
 }

 rx_buf_size = mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 rx_buf_size = clamp_val(rx_buf_size, XLGMAC_RX_MIN_BUF_SIZE, PAGE_SIZE);

 rx_buf_size = (rx_buf_size + XLGMAC_RX_BUF_ALIGN - 1) &
        ~(XLGMAC_RX_BUF_ALIGN - 1);

 return rx_buf_size;
}
