
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_private {int dummy; } ;


 int cfi_udelay (int) ;
 scalar_t__ is_m29ew (struct cfi_private*) ;

__attribute__((used)) static void cfi_fixup_m29ew_delay_after_resume(struct cfi_private *cfi)
{




 if (is_m29ew(cfi))
  cfi_udelay(500);
}
