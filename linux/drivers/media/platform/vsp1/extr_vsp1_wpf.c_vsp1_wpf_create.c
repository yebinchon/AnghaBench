
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int index; int type; int * ops; } ;
struct vsp1_rwpf {TYPE_2__ entity; int ctrls; int dlm; int max_height; int max_width; } ;
struct vsp1_device {int dev; TYPE_1__* info; } ;
struct TYPE_4__ {int gen; } ;


 int ENOMEM ;
 struct vsp1_rwpf* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ;
 int VSP1_ENTITY_WPF ;
 int WPF_GEN2_MAX_HEIGHT ;
 int WPF_GEN2_MAX_WIDTH ;
 int WPF_GEN3_MAX_HEIGHT ;
 int WPF_GEN3_MAX_WIDTH ;
 int dev_err (int ,char*,unsigned int) ;
 struct vsp1_rwpf* devm_kzalloc (int ,int,int ) ;
 int sprintf (char*,char*,unsigned int) ;
 int v4l2_ctrl_handler_setup (int *) ;
 int vsp1_dlm_create (struct vsp1_device*,unsigned int,int) ;
 int vsp1_entity_destroy (TYPE_2__*) ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_2__*,char*,int,int *,int ) ;
 int wpf_entity_ops ;
 int wpf_init_controls (struct vsp1_rwpf*) ;
 int wpf_ops ;

struct vsp1_rwpf *vsp1_wpf_create(struct vsp1_device *vsp1, unsigned int index)
{
 struct vsp1_rwpf *wpf;
 char name[6];
 int ret;

 wpf = devm_kzalloc(vsp1->dev, sizeof(*wpf), GFP_KERNEL);
 if (wpf == ((void*)0))
  return ERR_PTR(-ENOMEM);

 if (vsp1->info->gen == 2) {
  wpf->max_width = WPF_GEN2_MAX_WIDTH;
  wpf->max_height = WPF_GEN2_MAX_HEIGHT;
 } else {
  wpf->max_width = WPF_GEN3_MAX_WIDTH;
  wpf->max_height = WPF_GEN3_MAX_HEIGHT;
 }

 wpf->entity.ops = &wpf_entity_ops;
 wpf->entity.type = VSP1_ENTITY_WPF;
 wpf->entity.index = index;

 sprintf(name, "wpf.%u", index);
 ret = vsp1_entity_init(vsp1, &wpf->entity, name, 2, &wpf_ops,
          MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER);
 if (ret < 0)
  return ERR_PTR(ret);


 wpf->dlm = vsp1_dlm_create(vsp1, index, 64);
 if (!wpf->dlm) {
  ret = -ENOMEM;
  goto error;
 }


 ret = wpf_init_controls(wpf);
 if (ret < 0) {
  dev_err(vsp1->dev, "wpf%u: failed to initialize controls\n",
   index);
  goto error;
 }

 v4l2_ctrl_handler_setup(&wpf->ctrls);

 return wpf;

error:
 vsp1_entity_destroy(&wpf->entity);
 return ERR_PTR(ret);
}
