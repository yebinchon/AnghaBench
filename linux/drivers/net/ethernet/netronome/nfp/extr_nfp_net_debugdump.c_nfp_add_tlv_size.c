
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_pf {int hwinfo; } ;
struct TYPE_2__ {int dump_length; } ;
struct nfp_dumpspec_csr {TYPE_1__ cpp; } ;
struct nfp_dump_tl {int type; } ;
struct nfp_dump_csr {int dummy; } ;


 int ALIGN8 (int) ;
 int NFP_IND_NUM_CONTEXTS ;
 int be32_to_cpu (int ) ;
 int nfp_calc_fwname_tlv_size (struct nfp_pf*) ;
 int nfp_calc_hwinfo_field_sz (struct nfp_pf*,struct nfp_dump_tl*) ;
 int nfp_calc_rtsym_dump_sz (struct nfp_pf*,struct nfp_dump_tl*) ;
 int nfp_csr_spec_valid (struct nfp_dumpspec_csr*) ;
 int nfp_dump_error_tlv_size (struct nfp_dump_tl*) ;
 int nfp_hwinfo_get_packed_str_size (int ) ;

__attribute__((used)) static int
nfp_add_tlv_size(struct nfp_pf *pf, struct nfp_dump_tl *tl, void *param)
{
 struct nfp_dumpspec_csr *spec_csr;
 u32 *size = param;
 u32 hwinfo_size;

 switch (be32_to_cpu(tl->type)) {
 case 134:
  *size += nfp_calc_fwname_tlv_size(pf);
  break;
 case 135:
 case 128:
 case 130:
  spec_csr = (struct nfp_dumpspec_csr *)tl;
  if (!nfp_csr_spec_valid(spec_csr))
   *size += nfp_dump_error_tlv_size(tl);
  else
   *size += ALIGN8(sizeof(struct nfp_dump_csr)) +
     ALIGN8(be32_to_cpu(spec_csr->cpp.dump_length));
  break;
 case 131:
  spec_csr = (struct nfp_dumpspec_csr *)tl;
  if (!nfp_csr_spec_valid(spec_csr))
   *size += nfp_dump_error_tlv_size(tl);
  else
   *size += ALIGN8(sizeof(struct nfp_dump_csr)) +
     ALIGN8(be32_to_cpu(spec_csr->cpp.dump_length) *
     NFP_IND_NUM_CONTEXTS);
  break;
 case 129:
  *size += nfp_calc_rtsym_dump_sz(pf, tl);
  break;
 case 133:
  hwinfo_size = nfp_hwinfo_get_packed_str_size(pf->hwinfo);
  *size += sizeof(struct nfp_dump_tl) + ALIGN8(hwinfo_size);
  break;
 case 132:
  *size += nfp_calc_hwinfo_field_sz(pf, tl);
  break;
 default:
  *size += nfp_dump_error_tlv_size(tl);
  break;
 }

 return 0;
}
