
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_rtsym {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 int NFP_CPP_ACTION_RW ;
 int __nfp_rtsym_read (struct nfp_cpp*,struct nfp_rtsym const*,int ,int ,int ,void*,size_t) ;

int nfp_rtsym_read(struct nfp_cpp *cpp, const struct nfp_rtsym *sym, u64 off,
     void *buf, size_t len)
{
 return __nfp_rtsym_read(cpp, sym, NFP_CPP_ACTION_RW, 0, off, buf, len);
}
