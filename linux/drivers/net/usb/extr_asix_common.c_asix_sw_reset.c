
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;


 int AX_CMD_SW_RESET ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *,int) ;
 int netdev_err (int ,char*,int) ;

int asix_sw_reset(struct usbnet *dev, u8 flags, int in_pm)
{
 int ret;

 ret = asix_write_cmd(dev, AX_CMD_SW_RESET, flags, 0, 0, ((void*)0), in_pm);
 if (ret < 0)
  netdev_err(dev->net, "Failed to send software reset: %02x\n", ret);

 return ret;
}
