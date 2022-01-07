
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int dummy; } ;


 int EINVAL ;
 int ISP_AFC_COMMAND_AUTO ;
 int ISP_AFC_COMMAND_DISABLE ;
 int ISP_AFC_COMMAND_MANUAL ;




 int __is_set_isp_afc (struct fimc_is*,int ,int) ;

__attribute__((used)) static int __ctrl_set_afc(struct fimc_is *is, int value)
{
 switch (value) {
 case 128:
  __is_set_isp_afc(is, ISP_AFC_COMMAND_DISABLE, 0);
  break;
 case 131:
  __is_set_isp_afc(is, ISP_AFC_COMMAND_MANUAL, 50);
  break;
 case 130:
  __is_set_isp_afc(is, ISP_AFC_COMMAND_MANUAL, 60);
  break;
 case 129:
  __is_set_isp_afc(is, ISP_AFC_COMMAND_AUTO, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
