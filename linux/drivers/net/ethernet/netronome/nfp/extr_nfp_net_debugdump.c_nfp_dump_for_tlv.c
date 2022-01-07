
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;
struct nfp_dumpspec_rtsym {int dummy; } ;
struct nfp_dumpspec_csr {int dummy; } ;
struct nfp_dump_tl {int type; } ;
struct nfp_dump_state {int dummy; } ;


 int EOPNOTSUPP ;
 int be32_to_cpu (int ) ;
 int nfp_dump_csr_range (struct nfp_pf*,struct nfp_dumpspec_csr*,struct nfp_dump_state*) ;
 int nfp_dump_error_tlv (struct nfp_dump_tl*,int ,struct nfp_dump_state*) ;
 int nfp_dump_fwname (struct nfp_pf*,struct nfp_dump_state*) ;
 int nfp_dump_hwinfo (struct nfp_pf*,struct nfp_dump_tl*,struct nfp_dump_state*) ;
 int nfp_dump_hwinfo_field (struct nfp_pf*,struct nfp_dump_tl*,struct nfp_dump_state*) ;
 int nfp_dump_indirect_csr_range (struct nfp_pf*,struct nfp_dumpspec_csr*,struct nfp_dump_state*) ;
 int nfp_dump_single_rtsym (struct nfp_pf*,struct nfp_dumpspec_rtsym*,struct nfp_dump_state*) ;

__attribute__((used)) static int
nfp_dump_for_tlv(struct nfp_pf *pf, struct nfp_dump_tl *tl, void *param)
{
 struct nfp_dumpspec_rtsym *spec_rtsym;
 struct nfp_dump_state *dump = param;
 struct nfp_dumpspec_csr *spec_csr;
 int err;

 switch (be32_to_cpu(tl->type)) {
 case 134:
  err = nfp_dump_fwname(pf, dump);
  if (err)
   return err;
  break;
 case 135:
 case 128:
 case 130:
  spec_csr = (struct nfp_dumpspec_csr *)tl;
  err = nfp_dump_csr_range(pf, spec_csr, dump);
  if (err)
   return err;
  break;
 case 131:
  spec_csr = (struct nfp_dumpspec_csr *)tl;
  err = nfp_dump_indirect_csr_range(pf, spec_csr, dump);
  if (err)
   return err;
  break;
 case 129:
  spec_rtsym = (struct nfp_dumpspec_rtsym *)tl;
  err = nfp_dump_single_rtsym(pf, spec_rtsym, dump);
  if (err)
   return err;
  break;
 case 133:
  err = nfp_dump_hwinfo(pf, tl, dump);
  if (err)
   return err;
  break;
 case 132:
  err = nfp_dump_hwinfo_field(pf, tl, dump);
  if (err)
   return err;
  break;
 default:
  err = nfp_dump_error_tlv(tl, -EOPNOTSUPP, dump);
  if (err)
   return err;
 }

 return 0;
}
