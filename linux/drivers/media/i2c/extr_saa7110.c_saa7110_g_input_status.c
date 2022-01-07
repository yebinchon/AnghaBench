
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa7110 {scalar_t__ norm; } ;


 int V4L2_IN_ST_NO_COLOR ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int debug ;
 int saa7110_read (struct v4l2_subdev*) ;
 struct saa7110* to_saa7110 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,unsigned long long) ;

__attribute__((used)) static int saa7110_g_input_status(struct v4l2_subdev *sd, u32 *pstatus)
{
 struct saa7110 *decoder = to_saa7110(sd);
 int res = V4L2_IN_ST_NO_SIGNAL;
 int status = saa7110_read(sd);

 v4l2_dbg(1, debug, sd, "status=0x%02x norm=%llx\n",
         status, (unsigned long long)decoder->norm);
 if (!(status & 0x40))
  res = 0;
 if (!(status & 0x03))
  res |= V4L2_IN_ST_NO_COLOR;

 *pstatus = res;
 return 0;
}
