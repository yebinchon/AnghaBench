
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct em28xx_i2c_bus {struct em28xx* dev; } ;
struct TYPE_3__ {struct em28xx_i2c_bus* priv; } ;
struct em28xx_dvb {TYPE_1__ adapter; } ;
struct TYPE_4__ {int has_dual_ts; } ;
struct em28xx {int dvb_max_pkt_size_isoc; int dvb_alt_isoc; scalar_t__ dvb_xfer_bulk; int ifnum; TYPE_2__ board; int dvb_ep_isoc; int dvb_ep_bulk; int intf; } ;


 int EM28XX_DIGITAL_MODE ;
 int EM28XX_DVB_BULK_PACKET_MULTIPLIER ;
 int EM28XX_DVB_NUM_BUFS ;
 int EM28XX_DVB_NUM_ISOC_PACKETS ;
 int ENODEV ;
 int dprintk (int,char*,int ,int,int,int) ;
 int em28xx_dvb_urb_data_copy ;
 int em28xx_init_usb_xfer (struct em28xx*,int ,scalar_t__,int ,int,int,int ) ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 struct usb_device* interface_to_usbdev (int ) ;
 int usb_set_interface (struct usb_device*,int ,int) ;

__attribute__((used)) static int em28xx_start_streaming(struct em28xx_dvb *dvb)
{
 int rc;
 struct em28xx_i2c_bus *i2c_bus = dvb->adapter.priv;
 struct em28xx *dev = i2c_bus->dev;
 struct usb_device *udev = interface_to_usbdev(dev->intf);
 int dvb_max_packet_size, packet_multiplier, dvb_alt;

 if (dev->dvb_xfer_bulk) {
  if (!dev->dvb_ep_bulk)
   return -ENODEV;
  dvb_max_packet_size = 512;
  packet_multiplier = EM28XX_DVB_BULK_PACKET_MULTIPLIER;
  dvb_alt = 0;
 } else {
  if (!dev->dvb_ep_isoc)
   return -ENODEV;
  dvb_max_packet_size = dev->dvb_max_pkt_size_isoc;
  if (dvb_max_packet_size < 0)
   return dvb_max_packet_size;
  packet_multiplier = EM28XX_DVB_NUM_ISOC_PACKETS;
  dvb_alt = dev->dvb_alt_isoc;
 }

 if (!dev->board.has_dual_ts)
  usb_set_interface(udev, dev->ifnum, dvb_alt);

 rc = em28xx_set_mode(dev, EM28XX_DIGITAL_MODE);
 if (rc < 0)
  return rc;

 dprintk(1, "Using %d buffers each with %d x %d bytes, alternate %d\n",
  EM28XX_DVB_NUM_BUFS,
  packet_multiplier,
  dvb_max_packet_size, dvb_alt);

 return em28xx_init_usb_xfer(dev, EM28XX_DIGITAL_MODE,
        dev->dvb_xfer_bulk,
        EM28XX_DVB_NUM_BUFS,
        dvb_max_packet_size,
        packet_multiplier,
        em28xx_dvb_urb_data_copy);
}
