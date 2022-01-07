
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dummy; } ;


 int CXL_PSL_APCALLOC_A ;
 int CXL_PSL_COALLOC_A ;
 int CXL_PSL_RXCTL_A ;
 int CXL_PSL_RXCTL_AFUHP_4S ;
 int CXL_PSL_SLICE_TRACE ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;

__attribute__((used)) static int init_implementation_afu_regs_psl8(struct cxl_afu *afu)
{

 cxl_p1n_write(afu, CXL_PSL_APCALLOC_A, 0xFFFFFFFEFEFEFEFEULL);

 cxl_p1n_write(afu, CXL_PSL_COALLOC_A, 0xFF000000FEFEFEFEULL);

 cxl_p1n_write(afu, CXL_PSL_SLICE_TRACE, 0x0000FFFF00000000ULL);
 cxl_p1n_write(afu, CXL_PSL_RXCTL_A, CXL_PSL_RXCTL_AFUHP_4S);

 return 0;
}
