
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int net; } ;


 int AX_CMD_WRITE_MEDIUM_MODE ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *,int) ;
 int netdev_dbg (int ,char*,int ) ;
 int netdev_err (int ,char*,int ,int) ;

int asix_write_medium_mode(struct usbnet *dev, u16 mode, int in_pm)
{
 int ret;

 netdev_dbg(dev->net, "asix_write_medium_mode() - mode = 0x%04x\n", mode);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_MEDIUM_MODE,
        mode, 0, 0, ((void*)0), in_pm);
 if (ret < 0)
  netdev_err(dev->net, "Failed to write Medium Mode mode to 0x%04x: %02x\n",
      mode, ret);

 return ret;
}
