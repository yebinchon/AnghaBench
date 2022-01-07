
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_rtsym_table {int dummy; } ;
struct nfp_mip {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 struct nfp_rtsym_table* __nfp_rtsym_table_read (struct nfp_cpp*,struct nfp_mip const*) ;
 int nfp_mip_close (struct nfp_mip const*) ;
 struct nfp_mip* nfp_mip_open (struct nfp_cpp*) ;

struct nfp_rtsym_table *nfp_rtsym_table_read(struct nfp_cpp *cpp)
{
 struct nfp_rtsym_table *rtbl;
 const struct nfp_mip *mip;

 mip = nfp_mip_open(cpp);
 rtbl = __nfp_rtsym_table_read(cpp, mip);
 nfp_mip_close(mip);

 return rtbl;
}
