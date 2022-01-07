
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int dummy; } ;


 int EINVAL ;
 unsigned int ISP_METERING_COMMAND_AVERAGE ;
 unsigned int ISP_METERING_COMMAND_CENTER ;
 unsigned int ISP_METERING_COMMAND_MATRIX ;
 unsigned int ISP_METERING_COMMAND_SPOT ;
 int IS_METERING_CONFIG_CMD ;




 int __is_set_isp_metering (struct fimc_is*,int ,unsigned int) ;

__attribute__((used)) static int __ctrl_set_metering(struct fimc_is *is, unsigned int value)
{
 unsigned int val;

 switch (value) {
 case 131:
  val = ISP_METERING_COMMAND_AVERAGE;
  break;
 case 130:
  val = ISP_METERING_COMMAND_CENTER;
  break;
 case 128:
  val = ISP_METERING_COMMAND_SPOT;
  break;
 case 129:
  val = ISP_METERING_COMMAND_MATRIX;
  break;
 default:
  return -EINVAL;
 }

 __is_set_isp_metering(is, IS_METERING_CONFIG_CMD, val);
 return 0;
}
