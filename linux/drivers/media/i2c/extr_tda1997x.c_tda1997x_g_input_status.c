
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int lock; int * input_detect; } ;


 int MASK_HPER ;
 int MASK_HSWIDTH ;
 int MASK_VPER ;
 int REG_HS_WIDTH ;
 int REG_H_PER ;
 int REG_V_PER ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int V4L2_IN_ST_NO_SYNC ;
 int debug ;
 int io_read16 (struct v4l2_subdev*,int ) ;
 int io_read24 (struct v4l2_subdev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ,int,int,int) ;

__attribute__((used)) static int
tda1997x_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 struct tda1997x_state *state = to_state(sd);
 u32 vper;
 u16 hper;
 u16 hsper;

 mutex_lock(&state->lock);
 vper = io_read24(sd, REG_V_PER) & MASK_VPER;
 hper = io_read16(sd, REG_H_PER) & MASK_HPER;
 hsper = io_read16(sd, REG_HS_WIDTH) & MASK_HSWIDTH;
 v4l2_dbg(1, debug, sd, "inputs:%d/%d timings:%d/%d/%d\n",
   state->input_detect[0], state->input_detect[1],
   vper, hper, hsper);
 if (!state->input_detect[0] && !state->input_detect[1])
  *status = V4L2_IN_ST_NO_SIGNAL;
 else if (!vper || !hper || !hsper)
  *status = V4L2_IN_ST_NO_SYNC;
 else
  *status = 0;
 mutex_unlock(&state->lock);

 return 0;
}
