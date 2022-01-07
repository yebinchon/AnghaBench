
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfi_private {struct cfi_pri_amdstd* cmdset_priv; } ;
struct cfi_pri_amdstd {char MinorVersion; int SoftwareFeatures; } ;


 int CFI_POLL_DQ ;
 int CFI_POLL_STATUS_REG ;

__attribute__((used)) static int cfi_use_status_reg(struct cfi_private *cfi)
{
 struct cfi_pri_amdstd *extp = cfi->cmdset_priv;
 u8 poll_mask = CFI_POLL_STATUS_REG | CFI_POLL_DQ;

 return extp->MinorVersion >= '5' &&
  (extp->SoftwareFeatures & poll_mask) == CFI_POLL_STATUS_REG;
}
