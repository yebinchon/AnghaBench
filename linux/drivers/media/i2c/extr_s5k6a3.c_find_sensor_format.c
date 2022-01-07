
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ code; } ;


 int ARRAY_SIZE (struct v4l2_mbus_framefmt const*) ;
 struct v4l2_mbus_framefmt const* s5k6a3_formats ;

__attribute__((used)) static const struct v4l2_mbus_framefmt *find_sensor_format(
 struct v4l2_mbus_framefmt *mf)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(s5k6a3_formats); i++)
  if (mf->code == s5k6a3_formats[i].code)
   return &s5k6a3_formats[i];

 return &s5k6a3_formats[0];
}
