
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dummy; } ;


 int CXL_AFU_Cntl_An_E ;
 int CXL_AFU_Cntl_An_ES_Enabled ;
 int CXL_AFU_Cntl_An_ES_MASK ;
 int afu_control (struct cxl_afu*,int ,int ,int ,int ,int) ;
 int pr_devel (char*) ;

__attribute__((used)) static int afu_enable(struct cxl_afu *afu)
{
 pr_devel("AFU enable request\n");

 return afu_control(afu, CXL_AFU_Cntl_An_E, 0,
      CXL_AFU_Cntl_An_ES_Enabled,
      CXL_AFU_Cntl_An_ES_MASK, 1);
}
