
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_ext_control {scalar_t__ id; } ;



__attribute__((used)) static bool uvc_ctrl_xctrls_has_control(const struct v4l2_ext_control *xctrls,
     unsigned int xctrls_count, u32 id)
{
 unsigned int i;

 for (i = 0; i < xctrls_count; ++i) {
  if (xctrls[i].id == id)
   return 1;
 }

 return 0;
}
