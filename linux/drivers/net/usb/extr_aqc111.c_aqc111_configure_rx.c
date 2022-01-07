
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct usbnet {TYPE_2__* net; TYPE_1__* udev; } ;
struct aqc111_data {int link_speed; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_4__ {int mtu; } ;
struct TYPE_3__ {int speed; } ;


 int * AQC111_BULKIN_SIZE ;
 int AQ_ACCESS_MAC ;




 int SFR_INTER_PACKET_GAP_0 ;
 int SFR_PAUSE_WATERLVL_LOW ;
 int SFR_RX_BULKIN_QCTRL ;
 int SFR_TX_PAUSE_RESEND_T ;




 int aqc111_write16_cmd (struct usbnet*,int ,int ,int,int*) ;
 int aqc111_write_cmd (struct usbnet*,int ,int ,int,int,size_t*) ;
 int memcpy (size_t*,int *,int) ;
 int netdev_info (TYPE_2__*,char*,int,int) ;

__attribute__((used)) static void aqc111_configure_rx(struct usbnet *dev,
    struct aqc111_data *aqc111_data)
{
 enum usb_device_speed usb_speed = dev->udev->speed;
 u16 link_speed = 0, usb_host = 0;
 u8 buf[5] = { 0 };
 u8 queue_num = 0;
 u16 reg16 = 0;
 u8 reg8 = 0;

 buf[0] = 0x00;
 buf[1] = 0xF8;
 buf[2] = 0x07;
 switch (aqc111_data->link_speed) {
 case 132:
  link_speed = 5000;
  reg8 = 0x05;
  reg16 = 0x001F;
  break;
 case 133:
  link_speed = 2500;
  reg16 = 0x003F;
  break;
 case 134:
  link_speed = 1000;
  reg16 = 0x009F;
  break;
 case 135:
  link_speed = 100;
  queue_num = 1;
  reg16 = 0x063F;
  buf[1] = 0xFB;
  buf[2] = 0x4;
  break;
 }

 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_INTER_PACKET_GAP_0,
    1, 1, &reg8);

 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_TX_PAUSE_RESEND_T, 3, 3, buf);

 switch (usb_speed) {
 case 128:
  usb_host = 3;
  break;
 case 130:
  usb_host = 2;
  break;
 case 131:
 case 129:
  usb_host = 1;
  queue_num = 0;
  break;
 default:
  usb_host = 0;
  break;
 }

 if (dev->net->mtu > 12500 && dev->net->mtu <= 16334)
  queue_num = 2;

 memcpy(buf, &AQC111_BULKIN_SIZE[queue_num], 5);

 aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_RX_BULKIN_QCTRL, 5, 5, buf);


 if (dev->net->mtu <= 4500)
  reg16 = 0x0810;
 else if (dev->net->mtu <= 9500)
  reg16 = 0x1020;
 else if (dev->net->mtu <= 12500)
  reg16 = 0x1420;
 else if (dev->net->mtu <= 16334)
  reg16 = 0x1A20;

 aqc111_write16_cmd(dev, AQ_ACCESS_MAC, SFR_PAUSE_WATERLVL_LOW,
      2, &reg16);
 netdev_info(dev->net, "Link Speed %d, USB %d", link_speed, usb_host);
}
