
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; int * lock; } ;
struct TYPE_11__ {int function; } ;
struct TYPE_10__ {TYPE_5__ entity; struct v4l2_ctrl_handler* ctrl_handler; int flags; } ;
struct TYPE_12__ {int flags; } ;
struct ov2680_ctrls {void* auto_exp; void* auto_gain; TYPE_2__* exposure; TYPE_1__* gain; int test_pattern; void* hflip; void* vflip; struct v4l2_ctrl_handler handler; } ;
struct ov2680_dev {TYPE_3__ sd; int lock; TYPE_6__ pad; int i2c_client; struct ov2680_ctrls ctrls; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VFLIP ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int media_entity_cleanup (TYPE_5__*) ;
 int media_entity_pads_init (TYPE_5__*,int,TYPE_6__*) ;
 struct v4l2_ctrl_ops ov2680_ctrl_ops ;
 int ov2680_subdev_ops ;
 int test_pattern_menu ;
 int v4l2_async_register_subdev (TYPE_3__*) ;
 int v4l2_ctrl_auto_cluster (int,void**,int,int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int ,int ) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops*,int ,scalar_t__,int ,int ,int ) ;
 int v4l2_i2c_subdev_init (TYPE_3__*,int ,int *) ;

__attribute__((used)) static int ov2680_v4l2_register(struct ov2680_dev *sensor)
{
 const struct v4l2_ctrl_ops *ops = &ov2680_ctrl_ops;
 struct ov2680_ctrls *ctrls = &sensor->ctrls;
 struct v4l2_ctrl_handler *hdl = &ctrls->handler;
 int ret = 0;

 v4l2_i2c_subdev_init(&sensor->sd, sensor->i2c_client,
        &ov2680_subdev_ops);




 sensor->pad.flags = MEDIA_PAD_FL_SOURCE;
 sensor->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;

 ret = media_entity_pads_init(&sensor->sd.entity, 1, &sensor->pad);
 if (ret < 0)
  return ret;

 v4l2_ctrl_handler_init(hdl, 7);

 hdl->lock = &sensor->lock;

 ctrls->vflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
 ctrls->hflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_HFLIP, 0, 1, 1, 0);

 ctrls->test_pattern = v4l2_ctrl_new_std_menu_items(hdl,
     &ov2680_ctrl_ops, V4L2_CID_TEST_PATTERN,
     ARRAY_SIZE(test_pattern_menu) - 1,
     0, 0, test_pattern_menu);

 ctrls->auto_exp = v4l2_ctrl_new_std_menu(hdl, ops,
       V4L2_CID_EXPOSURE_AUTO,
       V4L2_EXPOSURE_MANUAL, 0,
       V4L2_EXPOSURE_AUTO);

 ctrls->exposure = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_EXPOSURE,
         0, 32767, 1, 0);

 ctrls->auto_gain = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_AUTOGAIN,
          0, 1, 1, 1);
 ctrls->gain = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_GAIN, 0, 2047, 1, 0);

 if (hdl->error) {
  ret = hdl->error;
  goto cleanup_entity;
 }

 ctrls->gain->flags |= V4L2_CTRL_FLAG_VOLATILE;
 ctrls->exposure->flags |= V4L2_CTRL_FLAG_VOLATILE;

 v4l2_ctrl_auto_cluster(2, &ctrls->auto_gain, 0, 1);
 v4l2_ctrl_auto_cluster(2, &ctrls->auto_exp, 1, 1);

 sensor->sd.ctrl_handler = hdl;

 ret = v4l2_async_register_subdev(&sensor->sd);
 if (ret < 0)
  goto cleanup_entity;

 return 0;

cleanup_entity:
 media_entity_cleanup(&sensor->sd.entity);
 v4l2_ctrl_handler_free(hdl);

 return ret;
}
