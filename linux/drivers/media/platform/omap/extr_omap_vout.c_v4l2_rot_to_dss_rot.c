
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dss_rotation { ____Placeholder_dss_rotation } dss_rotation ;


 int EINVAL ;
 int dss_rotation_0_degree ;
 int dss_rotation_180_degree ;
 int dss_rotation_270_degree ;
 int dss_rotation_90_degree ;

__attribute__((used)) static int v4l2_rot_to_dss_rot(int v4l2_rotation,
   enum dss_rotation *rotation, bool mirror)
{
 int ret = 0;

 switch (v4l2_rotation) {
 case 90:
  *rotation = dss_rotation_90_degree;
  break;
 case 180:
  *rotation = dss_rotation_180_degree;
  break;
 case 270:
  *rotation = dss_rotation_270_degree;
  break;
 case 0:
  *rotation = dss_rotation_0_degree;
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
