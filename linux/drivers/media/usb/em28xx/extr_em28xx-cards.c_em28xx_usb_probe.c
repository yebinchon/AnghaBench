
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_interface {int num_altsetting; int dev; TYPE_7__* altsetting; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_9__ {int idProduct; int idVendor; } ;
struct usb_device {int speed; char* manufacturer; char* product; TYPE_3__* config; TYPE_1__ descriptor; } ;
struct TYPE_12__ {scalar_t__ decoder; scalar_t__ has_ir_i2c; int * ir_codes; scalar_t__ has_dual_ts; } ;
struct em28xx {int devno; int alt; int is_audio_only; int has_video; int ifnum; int num_alt; scalar_t__ em28xx_sensor; scalar_t__ tuner_type; int analog_xfer_bulk; int dvb_xfer_bulk; struct em28xx* alt_max_pkt_size_isoc; int media_dev; int ref; struct em28xx* dev_next; int dvb_alt_isoc; int dvb_max_pkt_size_isoc_ts2; int dvb_max_pkt_size_isoc; scalar_t__ dvb_ep_bulk_ts2; scalar_t__ dvb_ep_bulk; scalar_t__ dvb_ep_isoc_ts2; scalar_t__ dvb_ep_isoc; TYPE_5__* intf; scalar_t__ is_webcam; TYPE_4__ board; int lock; scalar_t__ model; int ts; scalar_t__ analog_ep_bulk; scalar_t__ analog_ep_isoc; int usb_audio_type; int name; } ;
struct TYPE_16__ {scalar_t__ type; } ;
struct TYPE_14__ {int bInterfaceNumber; scalar_t__ bInterfaceClass; int bNumEndpoints; } ;
struct TYPE_15__ {TYPE_6__ desc; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_10__ {int bNumInterfaces; } ;
struct TYPE_11__ {struct usb_interface** interface; TYPE_2__ desc; } ;


 int EM28XX_MAXBOARDS ;
 scalar_t__ EM28XX_NODECODER ;
 scalar_t__ EM28XX_NOSENSOR ;
 int EM28XX_USB_AUDIO_CLASS ;
 int EM28XX_USB_AUDIO_VENDOR ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_8__* INPUT (int ) ;
 int PRIMARY_TS ;
 int SECONDARY_TS ;
 scalar_t__ TUNER_ABSENT ;
 scalar_t__ USB_CLASS_AUDIO ;




 scalar_t__* card ;
 int clear_bit (int,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 scalar_t__ disable_usb_speed_check ;
 unsigned int em28xx_bcount ;
 int em28xx_check_usb_descriptor (struct em28xx*,struct usb_device*,struct usb_interface*,int,int,int*,int*,int*) ;
 int em28xx_devused ;
 scalar_t__ em28xx_duplicate_dev (struct em28xx*) ;
 int em28xx_init_dev (struct em28xx*,struct usb_device*,struct usb_interface*,int) ;
 int em28xx_write_reg (struct em28xx*,int,int) ;
 int find_first_zero_bit (int ,int) ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct em28xx* kcalloc (int,int,int ) ;
 int kfree (struct em28xx*) ;
 int kref_init (int *) ;
 struct em28xx* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mdelay (int) ;
 int media_device_register (int ) ;
 int mutex_init (int *) ;
 int request_modules (struct em28xx*) ;
 int snprintf (int ,int,char*) ;
 scalar_t__ test_and_set_bit (int,int ) ;
 struct usb_device* usb_get_dev (int ) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct em28xx*) ;
 scalar_t__ usb_xfer_mode ;

__attribute__((used)) static int em28xx_usb_probe(struct usb_interface *intf,
       const struct usb_device_id *id)
{
 struct usb_device *udev;
 struct em28xx *dev = ((void*)0);
 int retval;
 bool has_vendor_audio = 0, has_video = 0, has_dvb = 0;
 int i, nr, try_bulk;
 const int ifnum = intf->altsetting[0].desc.bInterfaceNumber;
 char *speed;

 udev = usb_get_dev(interface_to_usbdev(intf));


 do {
  nr = find_first_zero_bit(em28xx_devused, EM28XX_MAXBOARDS);
  if (nr >= EM28XX_MAXBOARDS) {

   dev_err(&intf->dev,
    "Driver supports up to %i em28xx boards.\n",
          EM28XX_MAXBOARDS);
   retval = -ENOMEM;
   goto err_no_slot;
  }
 } while (test_and_set_bit(nr, em28xx_devused));


 if (intf->altsetting[0].desc.bInterfaceClass == USB_CLASS_AUDIO) {
  dev_info(&intf->dev,
   "audio device (%04x:%04x): interface %i, class %i\n",
   le16_to_cpu(udev->descriptor.idVendor),
   le16_to_cpu(udev->descriptor.idProduct),
   ifnum,
   intf->altsetting[0].desc.bInterfaceClass);

  retval = -ENODEV;
  goto err;
 }


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  retval = -ENOMEM;
  goto err;
 }


 dev->alt_max_pkt_size_isoc = kcalloc(intf->num_altsetting,
          sizeof(dev->alt_max_pkt_size_isoc[0]),
          GFP_KERNEL);
 if (!dev->alt_max_pkt_size_isoc) {
  kfree(dev);
  retval = -ENOMEM;
  goto err;
 }


 for (i = 0; i < intf->num_altsetting; i++) {
  int ep;

  for (ep = 0;
       ep < intf->altsetting[i].desc.bNumEndpoints;
       ep++)
   em28xx_check_usb_descriptor(dev, udev, intf,
          i, ep,
          &has_vendor_audio,
          &has_video,
          &has_dvb);
 }

 if (!(has_vendor_audio || has_video || has_dvb)) {
  retval = -ENODEV;
  goto err_free;
 }

 switch (udev->speed) {
 case 129:
  speed = "1.5";
  break;
 case 128:
 case 131:
  speed = "12";
  break;
 case 130:
  speed = "480";
  break;
 default:
  speed = "unknown";
 }

 dev_info(&intf->dev,
  "New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\n",
  udev->manufacturer ? udev->manufacturer : "",
  udev->product ? udev->product : "",
  speed,
  le16_to_cpu(udev->descriptor.idVendor),
  le16_to_cpu(udev->descriptor.idProduct),
  ifnum,
  intf->altsetting->desc.bInterfaceNumber);






 if (udev->speed != 130 && disable_usb_speed_check == 0) {
  dev_err(&intf->dev, "Device initialization failed.\n");
  dev_err(&intf->dev,
   "Device must be connected to a high-speed USB 2.0 port.\n");
  retval = -ENODEV;
  goto err_free;
 }

 dev->devno = nr;
 dev->model = id->driver_info;
 dev->alt = -1;
 dev->is_audio_only = has_vendor_audio && !(has_video || has_dvb);
 dev->has_video = has_video;
 dev->ifnum = ifnum;

 dev->ts = PRIMARY_TS;
 snprintf(dev->name, 28, "em28xx");
 dev->dev_next = ((void*)0);

 if (has_vendor_audio) {
  dev_info(&intf->dev,
   "Audio interface %i found (Vendor Class)\n", ifnum);
  dev->usb_audio_type = EM28XX_USB_AUDIO_VENDOR;
 }

 for (i = 0; i < udev->config->desc.bNumInterfaces; i++) {
  struct usb_interface *uif = udev->config->interface[i];

  if (uif->altsetting[0].desc.bInterfaceClass == USB_CLASS_AUDIO) {
   if (has_vendor_audio)
    dev_err(&intf->dev,
     "em28xx: device seems to have vendor AND usb audio class interfaces !\n"
     "\t\tThe vendor interface will be ignored. Please contact the developers <linux-media@vger.kernel.org>\n");
   dev->usb_audio_type = EM28XX_USB_AUDIO_CLASS;
   break;
  }
 }

 if (has_video)
  dev_info(&intf->dev, "Video interface %i found:%s%s\n",
   ifnum,
   dev->analog_ep_bulk ? " bulk" : "",
   dev->analog_ep_isoc ? " isoc" : "");
 if (has_dvb)
  dev_info(&intf->dev, "DVB interface %i found:%s%s\n",
   ifnum,
   dev->dvb_ep_bulk ? " bulk" : "",
   dev->dvb_ep_isoc ? " isoc" : "");

 dev->num_alt = intf->num_altsetting;

 if ((unsigned int)card[nr] < em28xx_bcount)
  dev->model = card[nr];


 usb_set_intfdata(intf, dev);


 mutex_init(&dev->lock);
 retval = em28xx_init_dev(dev, udev, intf, nr);
 if (retval)
  goto err_free;

 if (usb_xfer_mode < 0) {
  if (dev->is_webcam)
   try_bulk = 1;
  else
   try_bulk = 0;
 } else {
  try_bulk = usb_xfer_mode > 0;
 }


 if (has_video &&
     dev->board.decoder == EM28XX_NODECODER &&
     dev->em28xx_sensor == EM28XX_NOSENSOR) {
  dev_err(&intf->dev,
   "Currently, V4L2 is not supported on this model\n");
  has_video = 0;
  dev->has_video = 0;
 }

 if (dev->board.has_dual_ts &&
     (dev->tuner_type != TUNER_ABSENT || INPUT(0)->type)) {




  dev_err(&intf->dev,
   "We currently don't support analog TV or stream capture on dual tuners.\n");
  has_video = 0;
 }


 if (has_video) {
  if (!dev->analog_ep_isoc || (try_bulk && dev->analog_ep_bulk))
   dev->analog_xfer_bulk = 1;
  dev_info(&intf->dev, "analog set to %s mode.\n",
   dev->analog_xfer_bulk ? "bulk" : "isoc");
 }
 if (has_dvb) {
  if (!dev->dvb_ep_isoc || (try_bulk && dev->dvb_ep_bulk))
   dev->dvb_xfer_bulk = 1;
  dev_info(&intf->dev, "dvb set to %s mode.\n",
   dev->dvb_xfer_bulk ? "bulk" : "isoc");
 }

 if (dev->board.has_dual_ts && em28xx_duplicate_dev(dev) == 0) {
  dev->dev_next->ts = SECONDARY_TS;
  dev->dev_next->alt = -1;
  dev->dev_next->is_audio_only = has_vendor_audio &&
      !(has_video || has_dvb);
  dev->dev_next->has_video = 0;
  dev->dev_next->ifnum = ifnum;
  dev->dev_next->model = id->driver_info;

  mutex_init(&dev->dev_next->lock);
  retval = em28xx_init_dev(dev->dev_next, udev, intf,
      dev->dev_next->devno);
  if (retval)
   goto err_free;

  dev->dev_next->board.ir_codes = ((void*)0);
  dev->dev_next->board.has_ir_i2c = 0;

  if (usb_xfer_mode < 0) {
   if (dev->dev_next->is_webcam)
    try_bulk = 1;
   else
    try_bulk = 0;
  } else {
   try_bulk = usb_xfer_mode > 0;
  }


  if (has_dvb) {
   if (!dev->dvb_ep_isoc_ts2 ||
       (try_bulk && dev->dvb_ep_bulk_ts2))
    dev->dev_next->dvb_xfer_bulk = 1;
   dev_info(&dev->intf->dev, "dvb ts2 set to %s mode.\n",
     dev->dev_next->dvb_xfer_bulk ? "bulk" : "isoc");
  }

  dev->dev_next->dvb_ep_isoc = dev->dvb_ep_isoc_ts2;
  dev->dev_next->dvb_ep_bulk = dev->dvb_ep_bulk_ts2;
  dev->dev_next->dvb_max_pkt_size_isoc = dev->dvb_max_pkt_size_isoc_ts2;
  dev->dev_next->dvb_alt_isoc = dev->dvb_alt_isoc;


  if (dev->dvb_xfer_bulk) {

   em28xx_write_reg(dev, 0x0b, 0x96);
   mdelay(100);
   em28xx_write_reg(dev, 0x0b, 0x80);
   mdelay(100);
  } else {

   em28xx_write_reg(dev, 0x0b, 0x96);
   mdelay(100);
   em28xx_write_reg(dev, 0x0b, 0x82);
   mdelay(100);
  }

  kref_init(&dev->dev_next->ref);
 }

 kref_init(&dev->ref);

 request_modules(dev);
 return 0;

err_free:
 kfree(dev->alt_max_pkt_size_isoc);
 kfree(dev);

err:
 clear_bit(nr, em28xx_devused);

err_no_slot:
 usb_put_dev(udev);
 return retval;
}
