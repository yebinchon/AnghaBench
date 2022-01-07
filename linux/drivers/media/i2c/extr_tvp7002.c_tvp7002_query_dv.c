
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct tvp7002_timings_definition {int lines_per_frame; int progressive; int cpl_min; int cpl_max; } ;


 int ENOLINK ;
 int NUM_TIMINGS ;
 int TVP7002_CLK_L_STAT_LSBS ;
 int TVP7002_CLK_L_STAT_MSBS ;
 int TVP7002_CL_MASK ;
 int TVP7002_CL_SHIFT ;
 int TVP7002_INPR_MASK ;
 int TVP7002_IP_SHIFT ;
 int TVP7002_L_FRAME_STAT_LSBS ;
 int TVP7002_L_FRAME_STAT_MSBS ;
 int debug ;
 int tvp7002_read_err (struct v4l2_subdev*,int ,int*,int*) ;
 struct tvp7002_timings_definition* tvp7002_timings ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,...) ;

__attribute__((used)) static int tvp7002_query_dv(struct v4l2_subdev *sd, int *index)
{
 const struct tvp7002_timings_definition *timings = tvp7002_timings;
 u8 progressive;
 u32 lpfr;
 u32 cpln;
 int error = 0;
 u8 lpf_lsb;
 u8 lpf_msb;
 u8 cpl_lsb;
 u8 cpl_msb;


 *index = NUM_TIMINGS;


 tvp7002_read_err(sd, TVP7002_L_FRAME_STAT_LSBS, &lpf_lsb, &error);
 tvp7002_read_err(sd, TVP7002_L_FRAME_STAT_MSBS, &lpf_msb, &error);

 if (error < 0)
  return error;

 tvp7002_read_err(sd, TVP7002_CLK_L_STAT_LSBS, &cpl_lsb, &error);
 tvp7002_read_err(sd, TVP7002_CLK_L_STAT_MSBS, &cpl_msb, &error);

 if (error < 0)
  return error;


 lpfr = lpf_lsb | ((TVP7002_CL_MASK & lpf_msb) << TVP7002_CL_SHIFT);
 cpln = cpl_lsb | ((TVP7002_CL_MASK & cpl_msb) << TVP7002_CL_SHIFT);
 progressive = (lpf_msb & TVP7002_INPR_MASK) >> TVP7002_IP_SHIFT;


 for (*index = 0; *index < NUM_TIMINGS; (*index)++, timings++)
  if (lpfr == timings->lines_per_frame &&
   progressive == timings->progressive) {
   if (timings->cpl_min == 0xffff)
    break;
   if (cpln >= timings->cpl_min && cpln <= timings->cpl_max)
    break;
  }

 if (*index == NUM_TIMINGS) {
  v4l2_dbg(1, debug, sd, "detection failed: lpf = %x, cpl = %x\n",
        lpfr, cpln);
  return -ENOLINK;
 }


 v4l2_dbg(1, debug, sd, "detected timings: %d\n", *index);
 return 0;
}
