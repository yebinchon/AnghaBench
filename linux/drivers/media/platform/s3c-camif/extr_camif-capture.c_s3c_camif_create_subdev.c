
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; int entity; int name; int flags; } ;
struct v4l2_ctrl_handler {int error; } ;
struct camif_dev {int ctrl_colorfx; TYPE_1__* variant; int ctrl_colorfx_cbcr; int ctrl_test_pattern; TYPE_2__* pads; struct v4l2_subdev subdev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_4__ {void* flags; } ;
struct TYPE_3__ {scalar_t__ has_img_effect; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int CAMIF_SD_PADS_NUM ;
 size_t CAMIF_SD_PAD_SINK ;
 size_t CAMIF_SD_PAD_SOURCE_C ;
 size_t CAMIF_SD_PAD_SOURCE_P ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int V4L2_CID_COLORFX ;
 int V4L2_CID_COLORFX_CBCR ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_COLORFX_NONE ;
 int V4L2_COLORFX_SET_CBCR ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int media_entity_cleanup (int *) ;
 int media_entity_pads_init (int *,int ,TYPE_2__*) ;
 int s3c_camif_subdev_ctrl_ops ;
 int s3c_camif_subdev_ops ;
 int s3c_camif_test_pattern_menu ;
 int strscpy (int ,char*,int) ;
 int v4l2_ctrl_auto_cluster (int,int *,int ,int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int ) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int,int ) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ,int ) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct camif_dev*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int s3c_camif_create_subdev(struct camif_dev *camif)
{
 struct v4l2_ctrl_handler *handler = &camif->ctrl_handler;
 struct v4l2_subdev *sd = &camif->subdev;
 int ret;

 v4l2_subdev_init(sd, &s3c_camif_subdev_ops);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 strscpy(sd->name, "S3C-CAMIF", sizeof(sd->name));

 camif->pads[CAMIF_SD_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 camif->pads[CAMIF_SD_PAD_SOURCE_C].flags = MEDIA_PAD_FL_SOURCE;
 camif->pads[CAMIF_SD_PAD_SOURCE_P].flags = MEDIA_PAD_FL_SOURCE;

 ret = media_entity_pads_init(&sd->entity, CAMIF_SD_PADS_NUM,
    camif->pads);
 if (ret)
  return ret;

 v4l2_ctrl_handler_init(handler, 3);
 camif->ctrl_test_pattern = v4l2_ctrl_new_std_menu_items(handler,
   &s3c_camif_subdev_ctrl_ops, V4L2_CID_TEST_PATTERN,
   ARRAY_SIZE(s3c_camif_test_pattern_menu) - 1, 0, 0,
   s3c_camif_test_pattern_menu);

 if (camif->variant->has_img_effect) {
  camif->ctrl_colorfx = v4l2_ctrl_new_std_menu(handler,
    &s3c_camif_subdev_ctrl_ops,
    V4L2_CID_COLORFX, V4L2_COLORFX_SET_CBCR,
    ~0x981f, V4L2_COLORFX_NONE);

  camif->ctrl_colorfx_cbcr = v4l2_ctrl_new_std(handler,
    &s3c_camif_subdev_ctrl_ops,
    V4L2_CID_COLORFX_CBCR, 0, 0xffff, 1, 0);
 }

 if (handler->error) {
  v4l2_ctrl_handler_free(handler);
  media_entity_cleanup(&sd->entity);
  return handler->error;
 }

 if (camif->variant->has_img_effect)
  v4l2_ctrl_auto_cluster(2, &camif->ctrl_colorfx,
          V4L2_COLORFX_SET_CBCR, 0);

 sd->ctrl_handler = handler;
 v4l2_set_subdevdata(sd, camif);

 return 0;
}
