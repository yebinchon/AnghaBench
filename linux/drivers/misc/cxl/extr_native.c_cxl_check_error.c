
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dummy; } ;


 int CXL_PSL_SCNTL_An ;
 unsigned long long cxl_p1n_read (struct cxl_afu*,int ) ;

int cxl_check_error(struct cxl_afu *afu)
{
 return (cxl_p1n_read(afu, CXL_PSL_SCNTL_An) == ~0ULL);
}
