
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_frame_desc {int num_entries; TYPE_1__* entry; } ;
struct s5c73m3 {int lock; struct v4l2_mbus_frame_desc frame_desc; } ;
struct TYPE_2__ {int length; } ;


 int EINVAL ;
 unsigned int OIF_SOURCE_PAD ;
 int S5C73M3_EMBEDDED_DATA_MAXLEN ;
 int SZ_1M ;
 int max_t (int ,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int u32 ;

__attribute__((used)) static int s5c73m3_oif_set_frame_desc(struct v4l2_subdev *sd, unsigned int pad,
          struct v4l2_mbus_frame_desc *fd)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 struct v4l2_mbus_frame_desc *frame_desc = &state->frame_desc;
 int i;

 if (pad != OIF_SOURCE_PAD || fd == ((void*)0))
  return -EINVAL;

 fd->entry[0].length = 10 * SZ_1M;
 fd->entry[1].length = max_t(u32, fd->entry[1].length,
        S5C73M3_EMBEDDED_DATA_MAXLEN);
 fd->num_entries = 2;

 mutex_lock(&state->lock);
 for (i = 0; i < fd->num_entries; i++)
  frame_desc->entry[i] = fd->entry[i];
 mutex_unlock(&state->lock);

 return 0;
}
