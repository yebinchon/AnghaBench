
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; } ;
struct v4l2_mbus_frame_desc {int num_entries; TYPE_2__* entry; } ;
struct TYPE_3__ {int buf_size; } ;
struct m5mols_info {int lock; TYPE_1__ cap; struct v4l2_mbus_framefmt* ffmt; } ;
struct TYPE_4__ {int length; int flags; } ;


 int EINVAL ;
 int M5MOLS_MAIN_JPEG_SIZE_MAX ;
 size_t M5MOLS_RESTYPE_CAPTURE ;
 int V4L2_MBUS_FRAME_DESC_FL_LEN_MAX ;
 int clamp_t (int ,int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;
 int u32 ;

__attribute__((used)) static int m5mols_set_frame_desc(struct v4l2_subdev *sd, unsigned int pad,
     struct v4l2_mbus_frame_desc *fd)
{
 struct m5mols_info *info = to_m5mols(sd);
 struct v4l2_mbus_framefmt *mf = &info->ffmt[M5MOLS_RESTYPE_CAPTURE];

 if (pad != 0 || fd == ((void*)0))
  return -EINVAL;

 fd->entry[0].flags = V4L2_MBUS_FRAME_DESC_FL_LEN_MAX;
 fd->num_entries = 1;
 fd->entry[0].length = clamp_t(u32, fd->entry[0].length,
          mf->width * mf->height,
          M5MOLS_MAIN_JPEG_SIZE_MAX);
 mutex_lock(&info->lock);
 info->cap.buf_size = fd->entry[0].length;
 mutex_unlock(&info->lock);

 return 0;
}
