
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct vb2_queue {int dummy; } ;
struct urb {int interval; int* transfer_buffer; int number_of_packets; int transfer_buffer_length; TYPE_1__* iso_frame_desc; int complete; int transfer_flags; int pipe; struct dvb_usb_device* context; TYPE_4__* dev; } ;
struct dvb_usb_device {TYPE_4__* udev; struct cxusb_medion_dev* priv; } ;
struct TYPE_7__ {int buf; } ;
struct TYPE_6__ {int * buf; int mode; } ;
struct cxusb_medion_dev {int cx25840; TYPE_3__ auxbuf; struct urb** streamurbs; TYPE_2__ bt656; int * vbuf; scalar_t__ vbuf_sequence; scalar_t__ nexturb; scalar_t__ urbcomplete; int field_order; scalar_t__ stop_streaming; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {int offset; int length; } ;


 int CMD_STREAMING_OFF ;
 int CMD_STREAMING_ON ;
 int CXUSB_VIDEO_PKT_SIZE ;
 int CXUSB_VIDEO_URBS ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NEW_FRAME ;
 int OPS ;
 int URB_ISO_ASAP ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int*,int,int *,int ) ;
 int cxusb_medion_field_order (struct cxusb_medion_dev*) ;
 int cxusb_medion_return_buffers (struct cxusb_medion_dev*,int) ;
 int cxusb_medion_urbs_free (struct cxusb_medion_dev*) ;
 int cxusb_medion_v_complete ;
 int cxusb_medion_v_ss_auxbuf_alloc (struct cxusb_medion_dev*,int*) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*) ;
 int dev_err (int *,char*,int,...) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int s_stream ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_rcvisocpipe (TYPE_4__*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 struct dvb_usb_device* vb2_get_drv_priv (struct vb2_queue*) ;
 int vfree (int ) ;
 int video ;

__attribute__((used)) static int cxusb_medion_v_start_streaming(struct vb2_queue *q,
       unsigned int count)
{
 struct dvb_usb_device *dvbdev = vb2_get_drv_priv(q);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 u8 streamon_params[2] = { 0x03, 0x00 };
 int npackets, i;
 int ret;

 cxusb_vprintk(dvbdev, OPS, "should start streaming\n");

 if (cxdev->stop_streaming) {

  ret = -EBUSY;
  goto ret_retbufs;
 }

 cxdev->field_order = cxusb_medion_field_order(cxdev);

 ret = v4l2_subdev_call(cxdev->cx25840, video, s_stream, 1);
 if (ret != 0) {
  dev_err(&dvbdev->udev->dev,
   "unable to start stream (%d)\n", ret);
  goto ret_retbufs;
 }

 ret = cxusb_ctrl_msg(dvbdev, CMD_STREAMING_ON, streamon_params, 2,
        ((void*)0), 0);
 if (ret != 0) {
  dev_err(&dvbdev->udev->dev,
   "unable to start streaming (%d)\n", ret);
  goto ret_unstream_cx;
 }

 ret = cxusb_medion_v_ss_auxbuf_alloc(cxdev, &npackets);
 if (ret != 0)
  goto ret_unstream_md;

 for (i = 0; i < CXUSB_VIDEO_URBS; i++) {
  int framen;
  u8 *streambuf;
  struct urb *surb;






  streambuf = kmalloc(npackets * CXUSB_VIDEO_PKT_SIZE,
        GFP_KERNEL);
  if (!streambuf) {
   if (i < 2) {
    ret = -ENOMEM;
    goto ret_freeab;
   }
   break;
  }

  surb = usb_alloc_urb(npackets, GFP_KERNEL);
  if (!surb) {
   kfree(streambuf);
   ret = -ENOMEM;
   goto ret_freeu;
  }

  cxdev->streamurbs[i] = surb;
  surb->dev = dvbdev->udev;
  surb->context = dvbdev;
  surb->pipe = usb_rcvisocpipe(dvbdev->udev, 2);

  surb->interval = 1;
  surb->transfer_flags = URB_ISO_ASAP;

  surb->transfer_buffer = streambuf;

  surb->complete = cxusb_medion_v_complete;
  surb->number_of_packets = npackets;
  surb->transfer_buffer_length = npackets * CXUSB_VIDEO_PKT_SIZE;

  for (framen = 0; framen < npackets; framen++) {
   surb->iso_frame_desc[framen].offset =
    CXUSB_VIDEO_PKT_SIZE * framen;

   surb->iso_frame_desc[framen].length =
    CXUSB_VIDEO_PKT_SIZE;
  }
 }

 cxdev->urbcomplete = 0;
 cxdev->nexturb = 0;
 cxdev->vbuf_sequence = 0;

 cxdev->vbuf = ((void*)0);
 cxdev->bt656.mode = NEW_FRAME;
 cxdev->bt656.buf = ((void*)0);

 for (i = 0; i < CXUSB_VIDEO_URBS; i++)
  if (cxdev->streamurbs[i]) {
   ret = usb_submit_urb(cxdev->streamurbs[i],
          GFP_KERNEL);
   if (ret != 0)
    dev_err(&dvbdev->udev->dev,
     "URB %d submission failed (%d)\n", i,
     ret);
  }

 return 0;

ret_freeu:
 cxusb_medion_urbs_free(cxdev);

ret_freeab:
 vfree(cxdev->auxbuf.buf);

ret_unstream_md:
 cxusb_ctrl_msg(dvbdev, CMD_STREAMING_OFF, ((void*)0), 0, ((void*)0), 0);

ret_unstream_cx:
 v4l2_subdev_call(cxdev->cx25840, video, s_stream, 0);

ret_retbufs:
 cxusb_medion_return_buffers(cxdev, 1);

 return ret;
}
