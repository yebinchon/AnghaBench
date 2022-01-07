
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_pf {int cpp; int rtbl; } ;
typedef int name ;


 int ENOENT ;
 int nfp_cppcore_pcie_unit (int ) ;
 int nfp_err (int ,char*,char*) ;
 int nfp_rtsym_read_le (int ,char*,int*) ;
 int snprintf (char*,int,char const*,int ) ;

int nfp_pf_rtsym_read_optional(struct nfp_pf *pf, const char *format,
          unsigned int default_val)
{
 char name[256];
 int err = 0;
 u64 val;

 snprintf(name, sizeof(name), format, nfp_cppcore_pcie_unit(pf->cpp));

 val = nfp_rtsym_read_le(pf->rtbl, name, &err);
 if (err) {
  if (err == -ENOENT)
   return default_val;
  nfp_err(pf->cpp, "Unable to read symbol %s\n", name);
  return err;
 }

 return val;
}
