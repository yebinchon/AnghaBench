
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct m5mols_info {struct v4l2_subdev sd; } ;


 int ARRAY_SIZE (unsigned short const**) ;
 int AWB_MANUAL ;
 int AWB_MODE ;
 int EINVAL ;
 unsigned short const REG_AWB_PRESET ;
 int m5mols_debug ;
 int m5mols_write (struct v4l2_subdev*,int ,unsigned short const) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned short const) ;

__attribute__((used)) static int m5mols_set_white_balance(struct m5mols_info *info, int val)
{
 static const unsigned short wb[][2] = {
  { 129, 139 },
  { 132, 142 },
  { 131, 141 },
  { 130, 140 },
  { 134, 143 },
  { 133, 138 },
  { 135, 144 },
  { 128, 137 },
  { 136, 145 },
 };
 int i;
 struct v4l2_subdev *sd = &info->sd;
 int ret = -EINVAL;

 for (i = 0; i < ARRAY_SIZE(wb); i++) {
  int awb;
  if (wb[i][0] != val)
   continue;

  v4l2_dbg(1, m5mols_debug, sd,
    "Setting white balance to: %#x\n", wb[i][0]);

  awb = wb[i][0] == 136;
  ret = m5mols_write(sd, AWB_MODE, awb ? 145 :
       REG_AWB_PRESET);
  if (ret < 0)
   return ret;

  if (!awb)
   ret = m5mols_write(sd, AWB_MANUAL, wb[i][1]);
 }

 return ret;
}
