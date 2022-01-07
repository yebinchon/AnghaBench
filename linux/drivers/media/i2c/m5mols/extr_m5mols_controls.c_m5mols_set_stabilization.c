
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct m5mols_info {struct v4l2_subdev sd; } ;


 int AE_EV_PRESET_CAPTURE ;
 int AE_EV_PRESET_MONITOR ;
 int m5mols_write (struct v4l2_subdev*,int ,unsigned int) ;

__attribute__((used)) static int m5mols_set_stabilization(struct m5mols_info *info, int val)
{
 struct v4l2_subdev *sd = &info->sd;
 unsigned int evp = val ? 0xe : 0x0;
 int ret;

 ret = m5mols_write(sd, AE_EV_PRESET_MONITOR, evp);
 if (ret < 0)
  return ret;

 return m5mols_write(sd, AE_EV_PRESET_CAPTURE, evp);
}
