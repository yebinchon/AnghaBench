
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct vpbe_layer {int usrs; int opslock; TYPE_2__ layer_info; struct vpbe_display* disp_dev; } ;
struct vpbe_display {struct osd_state* osd_device; struct vpbe_device* vpbe_dev; } ;
struct vpbe_device {int v4l2_dev; } ;
struct TYPE_3__ {int (* request_layer ) (struct osd_state*,int ) ;} ;
struct osd_state {TYPE_1__ ops; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ERESTARTSYS ;
 int debug ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct osd_state*,int ) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_open(struct file *file)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_display *disp_dev = layer->disp_dev;
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
 struct osd_state *osd_device = disp_dev->osd_device;
 int err;


 err = v4l2_fh_open(file);
 if (err) {
  v4l2_err(&vpbe_dev->v4l2_dev, "v4l2_fh_open failed\n");
  return err;
 }


 if (!v4l2_fh_is_singular_file(file))
  return err;

 if (!layer->usrs) {
  if (mutex_lock_interruptible(&layer->opslock))
   return -ERESTARTSYS;

  err = osd_device->ops.request_layer(osd_device,
      layer->layer_info.id);
  mutex_unlock(&layer->opslock);
  if (err < 0) {

   v4l2_err(&vpbe_dev->v4l2_dev,
    "Display Manager failed to allocate layer\n");
   v4l2_fh_release(file);
   return -EINVAL;
  }
 }

 layer->usrs++;
 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev,
   "vpbe display device opened successfully\n");
 return 0;
}
