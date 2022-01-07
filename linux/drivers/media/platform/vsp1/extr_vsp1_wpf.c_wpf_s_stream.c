
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; struct vsp1_device* vsp1; } ;
struct vsp1_rwpf {TYPE_1__ entity; } ;
struct vsp1_device {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 scalar_t__ VI6_WPF_IRQ_ENB (int) ;
 int VI6_WPF_OFFSET ;
 scalar_t__ VI6_WPF_SRCRPF ;
 struct vsp1_rwpf* to_rwpf (struct v4l2_subdev*) ;
 int vsp1_write (struct vsp1_device*,scalar_t__,int ) ;

__attribute__((used)) static int wpf_s_stream(struct v4l2_subdev *subdev, int enable)
{
 struct vsp1_rwpf *wpf = to_rwpf(subdev);
 struct vsp1_device *vsp1 = wpf->entity.vsp1;

 if (enable)
  return 0;





 vsp1_write(vsp1, VI6_WPF_IRQ_ENB(wpf->entity.index), 0);
 vsp1_write(vsp1, wpf->entity.index * VI6_WPF_OFFSET +
     VI6_WPF_SRCRPF, 0);

 return 0;
}
