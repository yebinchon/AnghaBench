
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_2__* udev; int net; } ;
typedef int mac_addr ;
struct TYPE_3__ {int idProduct; int idVendor; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 int CONTROL_TIMEOUT_MS ;
 int EINVAL ;
 int ETH_ALEN ;
 int MAC_REG_STATION_H ;
 int MAC_REG_STATION_L ;
 int MAC_REG_STATION_M ;
 int REQUEST_READ ;
 int control_read (struct usbnet*,int ,int ,int ,unsigned char*,int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (unsigned char*,int ,int) ;
 int netdev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static int get_mac_address(struct usbnet *dev, unsigned char *data)
{
 int err = 0;
 unsigned char mac_addr[0x06];
 int rd_mac_len = 0;

 netdev_dbg(dev->net, "get_mac_address:\n\tusbnet VID:%0x PID:%0x\n",
     le16_to_cpu(dev->udev->descriptor.idVendor),
     le16_to_cpu(dev->udev->descriptor.idProduct));

 memset(mac_addr, 0, sizeof(mac_addr));
 rd_mac_len = control_read(dev, REQUEST_READ, 0,
      MAC_REG_STATION_L, mac_addr, 0x02,
      CONTROL_TIMEOUT_MS);
 rd_mac_len += control_read(dev, REQUEST_READ, 0, MAC_REG_STATION_M,
       mac_addr + 2, 0x02, CONTROL_TIMEOUT_MS);
 rd_mac_len += control_read(dev, REQUEST_READ, 0, MAC_REG_STATION_H,
       mac_addr + 4, 0x02, CONTROL_TIMEOUT_MS);
 if (rd_mac_len != ETH_ALEN)
  err = -EINVAL;

 data[0] = mac_addr[5];
 data[1] = mac_addr[4];
 data[2] = mac_addr[3];
 data[3] = mac_addr[2];
 data[4] = mac_addr[1];
 data[5] = mac_addr[0];

 return err;
}
