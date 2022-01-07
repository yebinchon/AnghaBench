
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_frame_desc {int num_entries; int * entry; } ;
struct TYPE_2__ {int * entry; } ;
struct s5c73m3 {int lock; TYPE_1__ frame_desc; } ;


 int EINVAL ;
 unsigned int OIF_SOURCE_PAD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;

__attribute__((used)) static int s5c73m3_oif_get_frame_desc(struct v4l2_subdev *sd, unsigned int pad,
      struct v4l2_mbus_frame_desc *fd)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 int i;

 if (pad != OIF_SOURCE_PAD || fd == ((void*)0))
  return -EINVAL;

 mutex_lock(&state->lock);
 fd->num_entries = 2;
 for (i = 0; i < fd->num_entries; i++)
  fd->entry[i] = state->frame_desc.entry[i];
 mutex_unlock(&state->lock);

 return 0;
}
