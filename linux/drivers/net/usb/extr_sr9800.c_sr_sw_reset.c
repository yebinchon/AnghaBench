
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;


 int SR_CMD_SW_RESET ;
 int netdev_err (int ,char*,int) ;
 int sr_write_cmd (struct usbnet*,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int sr_sw_reset(struct usbnet *dev, u8 flags)
{
 int ret;

 ret = sr_write_cmd(dev, SR_CMD_SW_RESET, flags, 0, 0, ((void*)0));
 if (ret < 0)
  netdev_err(dev->net, "Failed to send software reset:%02x\n",
      ret);

 return ret;
}
