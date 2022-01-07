
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dummy; } ;


 int CXL_PSL_SPAP_An ;
 int cxl_p1n_write (struct cxl_afu*,int ,int ) ;

__attribute__((used)) static inline void detach_spa(struct cxl_afu *afu)
{
 cxl_p1n_write(afu, CXL_PSL_SPAP_An, 0);
}
