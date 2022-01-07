
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int index; int type; int * ops; } ;
struct vsp1_rwpf {TYPE_1__ entity; int ctrls; int max_height; int max_width; } ;
struct vsp1_device {int dev; } ;


 int ENOMEM ;
 struct vsp1_rwpf* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ;
 int RPF_MAX_HEIGHT ;
 int RPF_MAX_WIDTH ;
 int VSP1_ENTITY_RPF ;
 int dev_err (int ,char*,unsigned int) ;
 struct vsp1_rwpf* devm_kzalloc (int ,int,int ) ;
 int rpf_entity_ops ;
 int rpf_ops ;
 int sprintf (char*,char*,unsigned int) ;
 int v4l2_ctrl_handler_setup (int *) ;
 int vsp1_entity_destroy (TYPE_1__*) ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_1__*,char*,int,int *,int ) ;
 int vsp1_rwpf_init_ctrls (struct vsp1_rwpf*,int ) ;

struct vsp1_rwpf *vsp1_rpf_create(struct vsp1_device *vsp1, unsigned int index)
{
 struct vsp1_rwpf *rpf;
 char name[6];
 int ret;

 rpf = devm_kzalloc(vsp1->dev, sizeof(*rpf), GFP_KERNEL);
 if (rpf == ((void*)0))
  return ERR_PTR(-ENOMEM);

 rpf->max_width = RPF_MAX_WIDTH;
 rpf->max_height = RPF_MAX_HEIGHT;

 rpf->entity.ops = &rpf_entity_ops;
 rpf->entity.type = VSP1_ENTITY_RPF;
 rpf->entity.index = index;

 sprintf(name, "rpf.%u", index);
 ret = vsp1_entity_init(vsp1, &rpf->entity, name, 2, &rpf_ops,
          MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER);
 if (ret < 0)
  return ERR_PTR(ret);


 ret = vsp1_rwpf_init_ctrls(rpf, 0);
 if (ret < 0) {
  dev_err(vsp1->dev, "rpf%u: failed to initialize controls\n",
   index);
  goto error;
 }

 v4l2_ctrl_handler_setup(&rpf->ctrls);

 return rpf;

error:
 vsp1_entity_destroy(&rpf->entity);
 return ERR_PTR(ret);
}
