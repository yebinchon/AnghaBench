
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int net; } ;
typedef int __le16 ;


 int AX_CMD_READ_RX_CTL ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int *,int) ;
 int le16_to_cpu (int ) ;
 int netdev_err (int ,char*,int) ;

u16 asix_read_rx_ctl(struct usbnet *dev, int in_pm)
{
 __le16 v;
 int ret = asix_read_cmd(dev, AX_CMD_READ_RX_CTL, 0, 0, 2, &v, in_pm);

 if (ret < 0) {
  netdev_err(dev->net, "Error reading RX_CTL register: %02x\n", ret);
  goto out;
 }
 ret = le16_to_cpu(v);
out:
 return ret;
}
