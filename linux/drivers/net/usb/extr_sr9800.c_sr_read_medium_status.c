
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int net; } ;
typedef int __le16 ;


 int SR_CMD_READ_MEDIUM_STATUS ;
 int le16_to_cpu (int ) ;
 int netdev_err (int ,char*,int) ;
 int sr_read_cmd (struct usbnet*,int ,int ,int ,int,int *) ;

__attribute__((used)) static u16 sr_read_medium_status(struct usbnet *dev)
{
 __le16 v;
 int ret;

 ret = sr_read_cmd(dev, SR_CMD_READ_MEDIUM_STATUS, 0, 0, 2, &v);
 if (ret < 0) {
  netdev_err(dev->net,
      "Error reading Medium Status register:%02x\n", ret);
  return ret;
 }

 return le16_to_cpu(v);
}
