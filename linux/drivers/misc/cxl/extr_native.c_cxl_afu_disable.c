
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dummy; } ;


 int CXL_AFU_Cntl_An_E ;
 int CXL_AFU_Cntl_An_ES_Disabled ;
 int CXL_AFU_Cntl_An_ES_MASK ;
 int afu_control (struct cxl_afu*,int ,int ,int ,int ,int) ;
 int pr_devel (char*) ;

int cxl_afu_disable(struct cxl_afu *afu)
{
 pr_devel("AFU disable request\n");

 return afu_control(afu, 0, CXL_AFU_Cntl_An_E,
      CXL_AFU_Cntl_An_ES_Disabled,
      CXL_AFU_Cntl_An_ES_MASK, 0);
}
