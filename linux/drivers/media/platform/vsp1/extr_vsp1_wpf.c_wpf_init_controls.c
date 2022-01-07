
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int index; struct vsp1_device* vsp1; } ;
struct TYPE_5__ {void* vflip; void* rotate; void* hflip; } ;
struct TYPE_6__ {TYPE_1__ ctrls; int lock; } ;
struct vsp1_rwpf {TYPE_4__ ctrls; TYPE_3__ entity; TYPE_2__ flip; } ;
struct vsp1_device {int dev; } ;


 int V4L2_CID_HFLIP ;
 int V4L2_CID_ROTATE ;
 int V4L2_CID_VFLIP ;
 int VSP1_HAS_WPF_HFLIP ;
 int VSP1_HAS_WPF_VFLIP ;
 int dev_err (int ,char*,int ) ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_cluster (int,void**) ;
 void* v4l2_ctrl_new_std (TYPE_4__*,int *,int ,int ,int,int,int ) ;
 scalar_t__ vsp1_feature (struct vsp1_device*,int ) ;
 int vsp1_rwpf_init_ctrls (struct vsp1_rwpf*,unsigned int) ;
 int vsp1_wpf_ctrl_ops ;

__attribute__((used)) static int wpf_init_controls(struct vsp1_rwpf *wpf)
{
 struct vsp1_device *vsp1 = wpf->entity.vsp1;
 unsigned int num_flip_ctrls;

 spin_lock_init(&wpf->flip.lock);

 if (wpf->entity.index != 0) {

  num_flip_ctrls = 0;
 } else if (vsp1_feature(vsp1, VSP1_HAS_WPF_HFLIP)) {




  num_flip_ctrls = 3;
 } else if (vsp1_feature(vsp1, VSP1_HAS_WPF_VFLIP)) {




  num_flip_ctrls = 1;
 } else {

  num_flip_ctrls = 0;
 }

 vsp1_rwpf_init_ctrls(wpf, num_flip_ctrls);

 if (num_flip_ctrls >= 1) {
  wpf->flip.ctrls.vflip =
   v4l2_ctrl_new_std(&wpf->ctrls, &vsp1_wpf_ctrl_ops,
       V4L2_CID_VFLIP, 0, 1, 1, 0);
 }

 if (num_flip_ctrls == 3) {
  wpf->flip.ctrls.hflip =
   v4l2_ctrl_new_std(&wpf->ctrls, &vsp1_wpf_ctrl_ops,
       V4L2_CID_HFLIP, 0, 1, 1, 0);
  wpf->flip.ctrls.rotate =
   v4l2_ctrl_new_std(&wpf->ctrls, &vsp1_wpf_ctrl_ops,
       V4L2_CID_ROTATE, 0, 270, 90, 0);
  v4l2_ctrl_cluster(3, &wpf->flip.ctrls.vflip);
 }

 if (wpf->ctrls.error) {
  dev_err(vsp1->dev, "wpf%u: failed to initialize controls\n",
   wpf->entity.index);
  return wpf->ctrls.error;
 }

 return 0;
}
