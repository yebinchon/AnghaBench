
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EM28XX_RESOURCE_VBI ;
 int EM28XX_RESOURCE_VIDEO ;


 int WARN_ON (int) ;

__attribute__((used)) static int get_resource(enum v4l2_buf_type f_type)
{
 switch (f_type) {
 case 128:
  return EM28XX_RESOURCE_VIDEO;
 case 129:
  return EM28XX_RESOURCE_VBI;
 default:
  WARN_ON(1);
  return -1;
 }
}
