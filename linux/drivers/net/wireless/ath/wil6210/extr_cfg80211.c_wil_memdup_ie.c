
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int const*,size_t,int ) ;

__attribute__((used)) static void
wil_memdup_ie(u8 **pdst, size_t *pdst_len, const u8 *src, size_t src_len)
{
 kfree(*pdst);
 *pdst = ((void*)0);
 *pdst_len = 0;
 if (src_len > 0) {
  *pdst = kmemdup(src, src_len, GFP_KERNEL);
  if (*pdst)
   *pdst_len = src_len;
 }
}
