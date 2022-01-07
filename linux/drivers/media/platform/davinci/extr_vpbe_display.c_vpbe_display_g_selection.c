
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct osd_layer_config {int ysize; int xsize; int xpos; int ypos; } ;
struct TYPE_7__ {int id; struct osd_layer_config config; } ;
struct vpbe_layer {TYPE_3__ layer_info; int device_id; TYPE_1__* disp_dev; } ;
struct TYPE_8__ {int yres; int xres; } ;
struct vpbe_device {TYPE_4__ current_timings; int v4l2_dev; } ;
struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; int target; struct v4l2_rect r; } ;
struct TYPE_6__ {int (* get_layer_config ) (struct osd_state*,int ,struct osd_layer_config*) ;} ;
struct osd_state {TYPE_2__ ops; } ;
struct file {int dummy; } ;
struct TYPE_5__ {struct osd_state* osd_device; struct vpbe_device* vpbe_dev; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;



 int debug ;
 int stub1 (struct osd_state*,int ,struct osd_layer_config*) ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_g_selection(struct file *file, void *priv,
        struct v4l2_selection *sel)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct osd_layer_config *cfg = &layer->layer_info.config;
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;
 struct osd_state *osd_device = layer->disp_dev->osd_device;
 struct v4l2_rect *rect = &sel->r;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
   "VIDIOC_G_SELECTION, layer id = %d\n",
   layer->device_id);

 if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 switch (sel->target) {
 case 130:
  osd_device->ops.get_layer_config(osd_device,
       layer->layer_info.id, cfg);
  rect->top = cfg->ypos;
  rect->left = cfg->xpos;
  rect->width = cfg->xsize;
  rect->height = cfg->ysize;
  break;
 case 128:
 case 129:
  rect->left = 0;
  rect->top = 0;
  rect->width = vpbe_dev->current_timings.xres;
  rect->height = vpbe_dev->current_timings.yres;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
