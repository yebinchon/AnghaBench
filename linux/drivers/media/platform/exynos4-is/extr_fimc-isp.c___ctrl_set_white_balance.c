
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int dummy; } ;


 int EINVAL ;
 int ISP_AWB_COMMAND_AUTO ;
 int ISP_AWB_COMMAND_ILLUMINATION ;
 int ISP_AWB_ILLUMINATION_CLOUDY ;
 int ISP_AWB_ILLUMINATION_DAYLIGHT ;
 int ISP_AWB_ILLUMINATION_FLUORESCENT ;
 int ISP_AWB_ILLUMINATION_TUNGSTEN ;





 int __is_set_isp_awb (struct fimc_is*,int ,int ) ;

__attribute__((used)) static int __ctrl_set_white_balance(struct fimc_is *is, int value)
{
 switch (value) {
 case 132:
  __is_set_isp_awb(is, ISP_AWB_COMMAND_AUTO, 0);
  break;
 case 130:
  __is_set_isp_awb(is, ISP_AWB_COMMAND_ILLUMINATION,
     ISP_AWB_ILLUMINATION_DAYLIGHT);
  break;
 case 131:
  __is_set_isp_awb(is, ISP_AWB_COMMAND_ILLUMINATION,
     ISP_AWB_ILLUMINATION_CLOUDY);
  break;
 case 128:
  __is_set_isp_awb(is, ISP_AWB_COMMAND_ILLUMINATION,
     ISP_AWB_ILLUMINATION_TUNGSTEN);
  break;
 case 129:
  __is_set_isp_awb(is, ISP_AWB_COMMAND_ILLUMINATION,
     ISP_AWB_ILLUMINATION_FLUORESCENT);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
