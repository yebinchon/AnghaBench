
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; int data; } ;
struct asix_data {int mac_addr; } ;
struct TYPE_2__ {int dev_addr; } ;


 int AX88772_MEDIUM_DEFAULT ;
 int AX_CMD_WRITE_NODE_ID ;
 int AX_DEFAULT_RX_CTL ;
 int ETH_ALEN ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int ,int ) ;
 int asix_write_medium_mode (struct usbnet*,int ,int ) ;
 int asix_write_rx_ctl (struct usbnet*,int ,int ) ;
 int ether_addr_copy (int ,int ) ;

__attribute__((used)) static int ax88772_reset(struct usbnet *dev)
{
 struct asix_data *data = (struct asix_data *)&dev->data;
 int ret;


 ether_addr_copy(data->mac_addr, dev->net->dev_addr);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_NODE_ID, 0, 0,
        ETH_ALEN, data->mac_addr, 0);
 if (ret < 0)
  goto out;


 ret = asix_write_rx_ctl(dev, AX_DEFAULT_RX_CTL, 0);
 if (ret < 0)
  goto out;

 ret = asix_write_medium_mode(dev, AX88772_MEDIUM_DEFAULT, 0);
 if (ret < 0)
  goto out;

 return 0;

out:
 return ret;
}
