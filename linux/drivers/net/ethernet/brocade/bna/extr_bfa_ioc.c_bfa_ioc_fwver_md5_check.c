
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_image_hdr {scalar_t__* md5sum; } ;


 int BFI_IOC_MD5SUM_SZ ;

__attribute__((used)) static bool
bfa_ioc_fwver_md5_check(struct bfi_ioc_image_hdr *fwhdr_1,
   struct bfi_ioc_image_hdr *fwhdr_2)
{
 int i;

 for (i = 0; i < BFI_IOC_MD5SUM_SZ; i++) {
  if (fwhdr_1->md5sum[i] != fwhdr_2->md5sum[i])
   return 0;
 }

 return 1;
}
