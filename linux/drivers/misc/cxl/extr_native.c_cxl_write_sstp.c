
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_afu {int dummy; } ;


 int CXL_SSTP0_An ;
 int CXL_SSTP1_An ;
 int cxl_afu_slbia (struct cxl_afu*) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int ) ;

__attribute__((used)) static int cxl_write_sstp(struct cxl_afu *afu, u64 sstp0, u64 sstp1)
{
 int rc;


 cxl_p2n_write(afu, CXL_SSTP1_An, 0);


 if ((rc = cxl_afu_slbia(afu)))
  return rc;


 cxl_p2n_write(afu, CXL_SSTP0_An, sstp0);


 cxl_p2n_write(afu, CXL_SSTP1_An, sstp1);

 return 0;
}
