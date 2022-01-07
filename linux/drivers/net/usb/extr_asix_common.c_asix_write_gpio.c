
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int net; } ;


 int AX_CMD_WRITE_GPIOS ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *,int) ;
 int msleep (int) ;
 int netdev_dbg (int ,char*,int ) ;
 int netdev_err (int ,char*,int ,int) ;

int asix_write_gpio(struct usbnet *dev, u16 value, int sleep, int in_pm)
{
 int ret;

 netdev_dbg(dev->net, "asix_write_gpio() - value = 0x%04x\n", value);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_GPIOS, value, 0, 0, ((void*)0), in_pm);
 if (ret < 0)
  netdev_err(dev->net, "Failed to write GPIO value 0x%04x: %02x\n",
      value, ret);

 if (sleep)
  msleep(sleep);

 return ret;
}
