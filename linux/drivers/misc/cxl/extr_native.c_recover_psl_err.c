
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_afu {int dummy; } ;


 int CXL_PSL_DSISR_An ;
 int CXL_PSL_DSISR_An_PE ;
 int CXL_PSL_ErrStat_An ;
 int cxl_p2n_read (struct cxl_afu*,int ) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int) ;
 int pr_devel (char*,int) ;

__attribute__((used)) static void recover_psl_err(struct cxl_afu *afu, u64 errstat)
{
 u64 dsisr;

 pr_devel("RECOVERING FROM PSL ERROR... (0x%016llx)\n", errstat);


 dsisr = cxl_p2n_read(afu, CXL_PSL_DSISR_An);
 cxl_p2n_write(afu, CXL_PSL_DSISR_An, dsisr & ~CXL_PSL_DSISR_An_PE);


 cxl_p2n_write(afu, CXL_PSL_ErrStat_An, errstat);
}
