
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int cpp; } ;


 int EINVAL ;
 int NFP_HWINFO_LOOKUP_SIZE ;
 int __nfp_nsp_hwinfo_lookup (struct nfp_nsp*,void*,unsigned int,int) ;
 unsigned int min_t (int ,unsigned int,int ) ;
 int nfp_err (int ,char*) ;
 unsigned int strnlen (void*,unsigned int) ;
 int u32 ;

int nfp_nsp_hwinfo_lookup(struct nfp_nsp *state, void *buf, unsigned int size)
{
 int err;

 size = min_t(u32, size, NFP_HWINFO_LOOKUP_SIZE);

 err = __nfp_nsp_hwinfo_lookup(state, buf, size, 0);
 if (err)
  return err;

 if (strnlen(buf, size) == size) {
  nfp_err(state->cpp, "NSP HWinfo value not NULL-terminated\n");
  return -EINVAL;
 }

 return 0;
}
