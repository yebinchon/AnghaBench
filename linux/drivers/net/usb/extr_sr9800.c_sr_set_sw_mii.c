
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;


 int SR_CMD_SET_SW_MII ;
 int netdev_err (int ,char*) ;
 int sr_write_cmd (struct usbnet*,int ,int,int ,int ,int *) ;

__attribute__((used)) static inline int sr_set_sw_mii(struct usbnet *dev)
{
 int ret;

 ret = sr_write_cmd(dev, SR_CMD_SET_SW_MII, 0x0000, 0, 0, ((void*)0));
 if (ret < 0)
  netdev_err(dev->net, "Failed to enable software MII access\n");
 return ret;
}
