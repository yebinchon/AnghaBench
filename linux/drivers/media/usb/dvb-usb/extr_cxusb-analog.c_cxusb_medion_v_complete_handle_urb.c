
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int number_of_packets; TYPE_1__* iso_frame_desc; int status; } ;
struct dvb_usb_device {TYPE_2__* udev; } ;
struct cxusb_medion_dev {unsigned int nexturb; int urbcomplete; int auxbuf; struct urb** streamurbs; struct dvb_usb_device* dvbdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ actual_length; } ;


 unsigned int CXUSB_VIDEO_URBS ;
 int EXDEV ;
 int GFP_KERNEL ;
 int URB ;
 int clear_bit (unsigned int,int *) ;
 int cxusb_auxbuf_append_urb (struct dvb_usb_device*,int *,struct urb*) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,...) ;
 int dev_err (int *,char*,unsigned int,int) ;
 int test_bit (unsigned int,int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static bool cxusb_medion_v_complete_handle_urb(struct cxusb_medion_dev *cxdev,
            bool *auxbuf_reset)
{
 struct dvb_usb_device *dvbdev = cxdev->dvbdev;
 unsigned int urbn;
 struct urb *urb;
 int ret;

 *auxbuf_reset = 0;

 urbn = cxdev->nexturb;
 if (!test_bit(urbn, &cxdev->urbcomplete))
  return 0;

 clear_bit(urbn, &cxdev->urbcomplete);

 do {
  cxdev->nexturb++;
  cxdev->nexturb %= CXUSB_VIDEO_URBS;
  urb = cxdev->streamurbs[cxdev->nexturb];
 } while (!urb);

 urb = cxdev->streamurbs[urbn];
 cxusb_vprintk(dvbdev, URB, "URB %u status = %d\n", urbn, urb->status);

 if (urb->status == 0 || urb->status == -EXDEV) {
  int i;
  unsigned long len;

  for (i = 0, len = 0; i < urb->number_of_packets; i++)
   len += urb->iso_frame_desc[i].actual_length;

  cxusb_vprintk(dvbdev, URB, "URB %u data len = %lu\n", urbn,
         len);

  if (len > 0) {
   cxusb_vprintk(dvbdev, URB, "appending URB\n");
   *auxbuf_reset =
    !cxusb_auxbuf_append_urb(dvbdev,
        &cxdev->auxbuf,
        urb);
  }
 }

 cxusb_vprintk(dvbdev, URB, "URB %u resubmit\n", urbn);

 ret = usb_submit_urb(urb, GFP_KERNEL);
 if (ret != 0)
  dev_err(&dvbdev->udev->dev,
   "unable to resubmit URB %u (%d), you'll have to restart streaming\n",
   urbn, ret);


 return test_bit(cxdev->nexturb, &cxdev->urbcomplete);
}
