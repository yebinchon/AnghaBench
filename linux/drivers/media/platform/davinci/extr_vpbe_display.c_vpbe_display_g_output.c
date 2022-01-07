
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_layer {TYPE_1__* disp_dev; } ;
struct vpbe_device {unsigned int current_out_index; int v4l2_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpbe_device* vpbe_dev; } ;


 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_g_output(struct file *file, void *priv,
    unsigned int *i)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;

 v4l2_dbg(1, debug, &vpbe_dev->v4l2_dev, "VIDIOC_G_OUTPUT\n");

 *i = vpbe_dev->current_out_index;

 return 0;
}
