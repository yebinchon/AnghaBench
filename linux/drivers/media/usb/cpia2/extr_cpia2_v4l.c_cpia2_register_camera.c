
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct v4l2_ctrl_config {char* name; int step; int def; int max; int min; int type; int id; int * ops; } ;
struct TYPE_8__ {int device_caps; int * v4l2_dev; struct v4l2_ctrl_handler* ctrl_handler; int * lock; } ;
struct TYPE_6__ {scalar_t__ device_type; int product; } ;
struct TYPE_7__ {TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_3__ vdev; int v4l2_dev; int v4l2_lock; void* top_light; void* bottom_light; TYPE_2__ params; int usb_alt; struct v4l2_ctrl_handler hdl; } ;


 int CPIA2_CID_USB_ALT ;
 int DEFAULT_BRIGHTNESS ;
 int DEFAULT_CONTRAST ;
 int DEFAULT_SATURATION ;
 scalar_t__ DEVICE_STV_672 ;
 int ENODEV ;
 int ERR (char*) ;
 int USBIF_ISO_1 ;
 int USBIF_ISO_6 ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_ILLUMINATORS_1 ;
 int V4L2_CID_ILLUMINATORS_2 ;
 int V4L2_CID_JPEG_ACTIVE_MARKER ;
 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_VFLIP ;
 int V4L2_CTRL_TYPE_INTEGER ;
 int V4L2_JPEG_ACTIVE_MARKER_DHT ;
 int VFL_TYPE_GRABBER ;
 int alternate ;
 int cpia2_ctrl_ops ;
 TYPE_3__ cpia2_template ;
 int reset_camera_struct_v4l (struct camera_data*) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,struct v4l2_ctrl_config*,int *) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;
 int video_nr ;
 scalar_t__ video_register_device (TYPE_3__*,int ,int ) ;
 int video_set_drvdata (TYPE_3__*,struct camera_data*) ;

int cpia2_register_camera(struct camera_data *cam)
{
 struct v4l2_ctrl_handler *hdl = &cam->hdl;
 struct v4l2_ctrl_config cpia2_usb_alt = {
  .ops = &cpia2_ctrl_ops,
  .id = CPIA2_CID_USB_ALT,
  .name = "USB Alternate",
  .type = V4L2_CTRL_TYPE_INTEGER,
  .min = USBIF_ISO_1,
  .max = USBIF_ISO_6,
  .step = 1,
 };
 int ret;

 v4l2_ctrl_handler_init(hdl, 12);
 v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
   V4L2_CID_BRIGHTNESS,
   cam->params.pnp_id.device_type == DEVICE_STV_672 ? 1 : 0,
   255, 1, DEFAULT_BRIGHTNESS);
 v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 255, 1, DEFAULT_CONTRAST);
 v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
   V4L2_CID_SATURATION, 0, 255, 1, DEFAULT_SATURATION);
 v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
   V4L2_CID_JPEG_ACTIVE_MARKER, 0,
   V4L2_JPEG_ACTIVE_MARKER_DHT, 0,
   V4L2_JPEG_ACTIVE_MARKER_DHT);
 v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
   V4L2_CID_JPEG_COMPRESSION_QUALITY, 1,
   100, 1, 100);
 cpia2_usb_alt.def = alternate;
 cam->usb_alt = v4l2_ctrl_new_custom(hdl, &cpia2_usb_alt, ((void*)0));

 if (cam->params.pnp_id.device_type != DEVICE_STV_672)
  v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);

 if (cam->params.pnp_id.device_type == DEVICE_STV_672)
  v4l2_ctrl_new_std_menu(hdl, &cpia2_ctrl_ops,
   V4L2_CID_POWER_LINE_FREQUENCY,
   V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0, 0);

 if (cam->params.pnp_id.product == 0x151) {
  cam->top_light = v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
    V4L2_CID_ILLUMINATORS_1, 0, 1, 1, 0);
  cam->bottom_light = v4l2_ctrl_new_std(hdl, &cpia2_ctrl_ops,
    V4L2_CID_ILLUMINATORS_2, 0, 1, 1, 0);
  v4l2_ctrl_cluster(2, &cam->top_light);
 }

 if (hdl->error) {
  ret = hdl->error;
  v4l2_ctrl_handler_free(hdl);
  return ret;
 }

 cam->vdev = cpia2_template;
 video_set_drvdata(&cam->vdev, cam);
 cam->vdev.lock = &cam->v4l2_lock;
 cam->vdev.ctrl_handler = hdl;
 cam->vdev.v4l2_dev = &cam->v4l2_dev;
 cam->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
    V4L2_CAP_STREAMING;

 reset_camera_struct_v4l(cam);


 if (video_register_device(&cam->vdev, VFL_TYPE_GRABBER, video_nr) < 0) {
  ERR("video_register_device failed\n");
  return -ENODEV;
 }

 return 0;
}
