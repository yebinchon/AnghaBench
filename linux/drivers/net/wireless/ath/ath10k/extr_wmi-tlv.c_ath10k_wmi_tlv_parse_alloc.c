
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 void const** ERR_PTR (int) ;
 int WMI_TLV_TAG_MAX ;
 int ath10k_wmi_tlv_parse (struct ath10k*,void const**,void const*,size_t) ;
 void** kcalloc (int ,int,int ) ;
 int kfree (void const**) ;

__attribute__((used)) static const void **
ath10k_wmi_tlv_parse_alloc(struct ath10k *ar, const void *ptr,
      size_t len, gfp_t gfp)
{
 const void **tb;
 int ret;

 tb = kcalloc(WMI_TLV_TAG_MAX, sizeof(*tb), gfp);
 if (!tb)
  return ERR_PTR(-ENOMEM);

 ret = ath10k_wmi_tlv_parse(ar, tb, ptr, len);
 if (ret) {
  kfree(tb);
  return ERR_PTR(ret);
 }

 return tb;
}
