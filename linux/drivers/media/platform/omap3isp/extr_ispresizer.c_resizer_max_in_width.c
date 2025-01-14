
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {scalar_t__ input; } ;
struct isp_device {scalar_t__ revision; } ;


 scalar_t__ ISP_REVISION_1_0 ;
 unsigned int MAX_IN_WIDTH_MEMORY_MODE ;
 unsigned int MAX_IN_WIDTH_ONTHEFLY_MODE_ES1 ;
 unsigned int MAX_IN_WIDTH_ONTHEFLY_MODE_ES2 ;
 scalar_t__ RESIZER_INPUT_MEMORY ;
 struct isp_device* to_isp_device (struct isp_res_device*) ;

__attribute__((used)) static unsigned int resizer_max_in_width(struct isp_res_device *res)
{
 struct isp_device *isp = to_isp_device(res);

 if (res->input == RESIZER_INPUT_MEMORY) {
  return MAX_IN_WIDTH_MEMORY_MODE;
 } else {
  if (isp->revision == ISP_REVISION_1_0)
   return MAX_IN_WIDTH_ONTHEFLY_MODE_ES1;
  else
   return MAX_IN_WIDTH_ONTHEFLY_MODE_ES2;
 }
}
