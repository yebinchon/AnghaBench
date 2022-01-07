
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev; } ;
struct amradio_device {int* buffer; TYPE_1__ vdev; int usbdev; } ;


 int AMRADIO_GET_READY_FLAG ;
 int BUFFER_LENGTH ;
 int EIO ;
 int USB_TIMEOUT ;
 int amradio_dev_warn (int *,char*,int) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int usb_bulk_msg (int ,int ,int*,int,int*,int ) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_sndintpipe (int ,int) ;
 scalar_t__ video_is_registered (TYPE_1__*) ;

__attribute__((used)) static int amradio_send_cmd(struct amradio_device *radio, u8 cmd, u8 arg,
  u8 *extra, u8 extralen, bool reply)
{
 int retval;
 int size;

 radio->buffer[0] = 0x00;
 radio->buffer[1] = 0x55;
 radio->buffer[2] = 0xaa;
 radio->buffer[3] = extralen;
 radio->buffer[4] = cmd;
 radio->buffer[5] = arg;
 radio->buffer[6] = 0x00;
 radio->buffer[7] = extra || reply ? 8 : 0;

 retval = usb_bulk_msg(radio->usbdev, usb_sndintpipe(radio->usbdev, 2),
  radio->buffer, BUFFER_LENGTH, &size, USB_TIMEOUT);

 if (retval < 0 || size != BUFFER_LENGTH) {
  if (video_is_registered(&radio->vdev))
   amradio_dev_warn(&radio->vdev.dev,
     "cmd %02x failed\n", cmd);
  return retval ? retval : -EIO;
 }
 if (!extra && !reply)
  return 0;

 if (extra) {
  memcpy(radio->buffer, extra, extralen);
  memset(radio->buffer + extralen, 0, 8 - extralen);
  retval = usb_bulk_msg(radio->usbdev, usb_sndintpipe(radio->usbdev, 2),
   radio->buffer, BUFFER_LENGTH, &size, USB_TIMEOUT);
 } else {
  memset(radio->buffer, 0, 8);
  retval = usb_bulk_msg(radio->usbdev, usb_rcvbulkpipe(radio->usbdev, 0x81),
   radio->buffer, BUFFER_LENGTH, &size, USB_TIMEOUT);
 }
 if (retval == 0 && size == BUFFER_LENGTH)
  return 0;
 if (video_is_registered(&radio->vdev) && cmd != AMRADIO_GET_READY_FLAG)
  amradio_dev_warn(&radio->vdev.dev, "follow-up to cmd %02x failed\n", cmd);
 return retval ? retval : -EIO;
}
