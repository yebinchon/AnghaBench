
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int net; } ;


 int MAC_RX ;
 int MAC_RX_MAX_SIZE ;
 int MAC_RX_MAX_SIZE_SHIFT ;
 int MAC_RX_RXEN ;
 int netdev_warn (int ,char*,int) ;
 int smsc75xx_read_reg (struct usbnet*,int ,int*) ;
 int smsc75xx_write_reg (struct usbnet*,int ,int) ;

__attribute__((used)) static int smsc75xx_set_rx_max_frame_length(struct usbnet *dev, int size)
{
 int ret = 0;
 u32 buf;
 bool rxenabled;

 ret = smsc75xx_read_reg(dev, MAC_RX, &buf);
 if (ret < 0) {
  netdev_warn(dev->net, "Failed to read MAC_RX: %d\n", ret);
  return ret;
 }

 rxenabled = ((buf & MAC_RX_RXEN) != 0);

 if (rxenabled) {
  buf &= ~MAC_RX_RXEN;
  ret = smsc75xx_write_reg(dev, MAC_RX, buf);
  if (ret < 0) {
   netdev_warn(dev->net, "Failed to write MAC_RX: %d\n", ret);
   return ret;
  }
 }


 buf &= ~MAC_RX_MAX_SIZE;
 buf |= (((size + 4) << MAC_RX_MAX_SIZE_SHIFT) & MAC_RX_MAX_SIZE);

 ret = smsc75xx_write_reg(dev, MAC_RX, buf);
 if (ret < 0) {
  netdev_warn(dev->net, "Failed to write MAC_RX: %d\n", ret);
  return ret;
 }

 if (rxenabled) {
  buf |= MAC_RX_RXEN;
  ret = smsc75xx_write_reg(dev, MAC_RX, buf);
  if (ret < 0) {
   netdev_warn(dev->net, "Failed to write MAC_RX: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
