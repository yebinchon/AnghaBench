
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* iso; } ;
struct TYPE_6__ {TYPE_2__ ctrls; } ;
struct fimc_is {TYPE_3__ isp; } ;
struct TYPE_4__ {unsigned int val; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int ISP_ISO_COMMAND_AUTO ;
 int ISP_ISO_COMMAND_MANUAL ;
 int V4L2_ISO_SENSITIVITY_AUTO ;
 int __is_set_isp_iso (struct fimc_is*,int ,unsigned int) ;
 unsigned int* iso_qmenu ;

__attribute__((used)) static int __ctrl_set_iso(struct fimc_is *is, int value)
{
 unsigned int idx, iso;

 if (value == V4L2_ISO_SENSITIVITY_AUTO) {
  __is_set_isp_iso(is, ISP_ISO_COMMAND_AUTO, 0);
  return 0;
 }
 idx = is->isp.ctrls.iso->val;
 if (idx >= ARRAY_SIZE(iso_qmenu))
  return -EINVAL;

 iso = iso_qmenu[idx];
 __is_set_isp_iso(is, ISP_ISO_COMMAND_MANUAL, iso);
 return 0;
}
