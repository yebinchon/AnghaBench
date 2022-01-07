
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int cpp; } ;


 int EINVAL ;
 int ENOENT ;
 int NFP_HWINFO_LOOKUP_SIZE ;
 int __nfp_nsp_hwinfo_lookup (struct nfp_nsp*,void*,unsigned int,int) ;
 unsigned int min_t (int ,unsigned int,int ) ;
 int nfp_err (int ,char*,...) ;
 int nfp_nsp_has_hwinfo_lookup (struct nfp_nsp*) ;
 int strcpy (void*,char const*) ;
 unsigned int strnlen (void*,unsigned int) ;
 int u32 ;

int nfp_nsp_hwinfo_lookup_optional(struct nfp_nsp *state, void *buf,
       unsigned int size, const char *default_val)
{
 int err;




 if (strnlen(default_val, size) == size)
  return -EINVAL;

 if (!nfp_nsp_has_hwinfo_lookup(state)) {
  strcpy(buf, default_val);
  return 0;
 }

 size = min_t(u32, size, NFP_HWINFO_LOOKUP_SIZE);

 err = __nfp_nsp_hwinfo_lookup(state, buf, size, 1);
 if (err) {
  if (err == -ENOENT) {
   strcpy(buf, default_val);
   return 0;
  }

  nfp_err(state->cpp, "NSP HWinfo lookup failed: %d\n", err);
  return err;
 }

 if (strnlen(buf, size) == size) {
  nfp_err(state->cpp, "NSP HWinfo value not NULL-terminated\n");
  return -EINVAL;
 }

 return 0;
}
