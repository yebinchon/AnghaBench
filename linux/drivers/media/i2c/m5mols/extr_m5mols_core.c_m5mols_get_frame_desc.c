
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_frame_desc {int num_entries; TYPE_3__* entry; } ;
struct TYPE_4__ {int buf_size; } ;
struct m5mols_info {int lock; TYPE_2__* ffmt; TYPE_1__ cap; } ;
struct TYPE_6__ {int flags; int pixelcode; int length; } ;
struct TYPE_5__ {int code; } ;


 int EINVAL ;
 size_t M5MOLS_RESTYPE_CAPTURE ;
 int V4L2_MBUS_FRAME_DESC_FL_LEN_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;

__attribute__((used)) static int m5mols_get_frame_desc(struct v4l2_subdev *sd, unsigned int pad,
     struct v4l2_mbus_frame_desc *fd)
{
 struct m5mols_info *info = to_m5mols(sd);

 if (pad != 0 || fd == ((void*)0))
  return -EINVAL;

 mutex_lock(&info->lock);




 fd->entry[0].length = info->cap.buf_size;
 fd->entry[0].pixelcode = info->ffmt[M5MOLS_RESTYPE_CAPTURE].code;
 mutex_unlock(&info->lock);

 fd->entry[0].flags = V4L2_MBUS_FRAME_DESC_FL_LEN_MAX;
 fd->num_entries = 1;

 return 0;
}
