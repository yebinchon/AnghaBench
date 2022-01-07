
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct osd_layer_config {scalar_t__ pixfmt; } ;
struct TYPE_4__ {int id; struct osd_layer_config config; } ;
struct vpbe_layer {int opslock; TYPE_2__ layer_info; int usrs; struct vpbe_display* disp_dev; } ;
struct vpbe_display {scalar_t__ cbcr_ofst; struct osd_state* osd_device; struct vpbe_device* vpbe_dev; } ;
struct vpbe_device {int v4l2_dev; } ;
struct TYPE_3__ {int (* release_layer ) (struct osd_state*,int ) ;int (* disable_layer ) (struct osd_state*,int ) ;} ;
struct osd_state {TYPE_1__ ops; } ;
struct file {int dummy; } ;


 scalar_t__ PIXFMT_NV12 ;
 int _vb2_fop_release (struct file*,int *) ;
 struct vpbe_layer* _vpbe_display_get_other_win_layer (struct vpbe_display*,struct vpbe_layer*) ;
 int debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct osd_state*,int ) ;
 int stub2 (struct osd_state*,int ) ;
 int stub3 (struct osd_state*,int ) ;
 int stub4 (struct osd_state*,int ) ;
 int stub5 (struct osd_state*,int ) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_release(struct file *file)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct osd_layer_config *cfg = &layer->layer_info.config;
 struct vpbe_display *disp_dev = layer->disp_dev;
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
 struct osd_state *osd_device = disp_dev->osd_device;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "vpbe_display_release\n");

 mutex_lock(&layer->opslock);

 osd_device->ops.disable_layer(osd_device,
   layer->layer_info.id);

 layer->usrs--;

 if (!layer->usrs) {
  if (cfg->pixfmt == PIXFMT_NV12) {
   struct vpbe_layer *otherlayer;
   otherlayer =
   _vpbe_display_get_other_win_layer(disp_dev, layer);
   osd_device->ops.disable_layer(osd_device,
     otherlayer->layer_info.id);
   osd_device->ops.release_layer(osd_device,
     otherlayer->layer_info.id);
  }
  osd_device->ops.disable_layer(osd_device,
    layer->layer_info.id);
  osd_device->ops.release_layer(osd_device,
    layer->layer_info.id);
 }

 _vb2_fop_release(file, ((void*)0));
 mutex_unlock(&layer->opslock);

 disp_dev->cbcr_ofst = 0;

 return 0;
}
