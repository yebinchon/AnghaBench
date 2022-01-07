
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_rwpf {int max_height; int max_width; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int RWPF_MIN_HEIGHT ;
 int RWPF_MIN_WIDTH ;
 struct vsp1_rwpf* to_rwpf (struct v4l2_subdev*) ;
 int vsp1_subdev_enum_frame_size (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_frame_size_enum*,int ,int ,int ,int ) ;

__attribute__((used)) static int vsp1_rwpf_enum_frame_size(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_frame_size_enum *fse)
{
 struct vsp1_rwpf *rwpf = to_rwpf(subdev);

 return vsp1_subdev_enum_frame_size(subdev, cfg, fse, RWPF_MIN_WIDTH,
        RWPF_MIN_HEIGHT, rwpf->max_width,
        rwpf->max_height);
}
