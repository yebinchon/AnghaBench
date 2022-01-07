
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_afu {scalar_t__ current_mode; } ;


 int CXL_AFU_Cntl_An_ES_Disabled ;
 int CXL_AFU_Cntl_An_ES_MASK ;
 int CXL_AFU_Cntl_An_RA ;
 int CXL_AFU_Cntl_An_RS_Complete ;
 int CXL_AFU_Cntl_An_RS_MASK ;
 int CXL_PSL_SERR_An ;
 int CXL_PSL_SERR_An_IRQ_MASKS ;
 int afu_control (struct cxl_afu*,int ,int ,int,int,int) ;
 int cxl_p1n_read (struct cxl_afu*,int ) ;
 int cxl_p1n_write (struct cxl_afu*,int ,int ) ;
 int pr_devel (char*) ;

__attribute__((used)) static int native_afu_reset(struct cxl_afu *afu)
{
 int rc;
 u64 serr;

 pr_devel("AFU reset request\n");

 rc = afu_control(afu, CXL_AFU_Cntl_An_RA, 0,
      CXL_AFU_Cntl_An_RS_Complete | CXL_AFU_Cntl_An_ES_Disabled,
      CXL_AFU_Cntl_An_RS_MASK | CXL_AFU_Cntl_An_ES_MASK,
      0);






 if (afu->current_mode == 0) {
  serr = cxl_p1n_read(afu, CXL_PSL_SERR_An);
  serr &= ~CXL_PSL_SERR_An_IRQ_MASKS;
  cxl_p1n_write(afu, CXL_PSL_SERR_An, serr);
 }

 return rc;
}
