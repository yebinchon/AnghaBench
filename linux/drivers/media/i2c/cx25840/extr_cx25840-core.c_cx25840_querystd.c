
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
typedef size_t u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
 int cx25840_debug ;
 int cx25840_read4 (struct i2c_client*,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,size_t,unsigned int) ;

__attribute__((used)) static int cx25840_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 static const v4l2_std_id stds[] = {
             128,

             136,
             135,
             137,
             134,
             132,
             131,
             130,
             133,

             128,
             128,
             128,
             129,
             128,
             128,
             128
 };

 u32 fmt = (cx25840_read4(client, 0x40c) >> 8) & 0xf;
 *std = stds[fmt];

 v4l_dbg(1, cx25840_debug, client,
  "querystd fmt = %x, v4l2_std_id = 0x%x\n",
  fmt, (unsigned int)stds[fmt]);

 return 0;
}
