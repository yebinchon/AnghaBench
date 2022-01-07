
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_device {int dummy; } ;
struct dvb_usb_adapter {TYPE_2__* dev; TYPE_1__* fe_adap; } ;
struct TYPE_5__ {struct usb_device* udev; } ;
struct TYPE_4__ {int fe; } ;


 int af9005_fe_attach (TYPE_2__*) ;
 int af9005_read_eeprom (TYPE_2__*,int,int *,int) ;
 int debug_dump (int *,int,int (*) (char*)) ;
 scalar_t__ dvb_usb_af9005_dump_eeprom ;
 int printk (char*) ;
 int usb_clear_halt (struct usb_device*,int ) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int af9005_frontend_attach(struct dvb_usb_adapter *adap)
{
 u8 buf[8];
 int i;





 struct usb_device *udev = adap->dev->udev;
 usb_clear_halt(udev, usb_sndbulkpipe(udev, 2));
 usb_clear_halt(udev, usb_rcvbulkpipe(udev, 1));
 if (dvb_usb_af9005_dump_eeprom) {
  printk("EEPROM DUMP\n");
  for (i = 0; i < 255; i += 8) {
   af9005_read_eeprom(adap->dev, i, buf, 8);
   debug_dump(buf, 8, printk);
  }
 }
 adap->fe_adap[0].fe = af9005_fe_attach(adap->dev);
 return 0;
}
