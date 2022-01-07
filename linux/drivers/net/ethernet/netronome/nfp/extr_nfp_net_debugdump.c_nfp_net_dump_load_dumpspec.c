
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_rtsym_table {int dummy; } ;
struct nfp_rtsym {int dummy; } ;
struct nfp_dumpspec {int size; int data; } ;
struct nfp_cpp {int dummy; } ;


 int NFP_DUMP_SPEC_RTSYM ;
 struct nfp_rtsym* nfp_rtsym_lookup (struct nfp_rtsym_table*,int ) ;
 int nfp_rtsym_read (struct nfp_cpp*,struct nfp_rtsym const*,int ,int ,int) ;
 int nfp_rtsym_size (struct nfp_rtsym const*) ;
 int nfp_warn (struct nfp_cpp*,char*) ;
 int vfree (struct nfp_dumpspec*) ;
 struct nfp_dumpspec* vmalloc (int) ;

struct nfp_dumpspec *
nfp_net_dump_load_dumpspec(struct nfp_cpp *cpp, struct nfp_rtsym_table *rtbl)
{
 const struct nfp_rtsym *specsym;
 struct nfp_dumpspec *dumpspec;
 int bytes_read;
 u64 sym_size;

 specsym = nfp_rtsym_lookup(rtbl, NFP_DUMP_SPEC_RTSYM);
 if (!specsym)
  return ((void*)0);
 sym_size = nfp_rtsym_size(specsym);


 dumpspec = vmalloc(sizeof(*dumpspec) + sym_size);
 if (!dumpspec)
  return ((void*)0);
 dumpspec->size = sym_size;

 bytes_read = nfp_rtsym_read(cpp, specsym, 0, dumpspec->data, sym_size);
 if (bytes_read != sym_size) {
  vfree(dumpspec);
  nfp_warn(cpp, "Debug dump specification read failed.\n");
  return ((void*)0);
 }

 return dumpspec;
}
