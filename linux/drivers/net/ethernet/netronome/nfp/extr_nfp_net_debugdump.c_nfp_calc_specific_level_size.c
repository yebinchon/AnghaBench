
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;
struct nfp_level_size {scalar_t__ requested_level; int total_size; } ;
struct nfp_dump_tl {scalar_t__ type; int length; int data; } ;


 int be32_to_cpu (int ) ;
 int nfp_add_tlv_size ;
 int nfp_traverse_tlvs (struct nfp_pf*,int ,int ,int *,int ) ;

__attribute__((used)) static int
nfp_calc_specific_level_size(struct nfp_pf *pf, struct nfp_dump_tl *dump_level,
        void *param)
{
 struct nfp_level_size *lev_sz = param;

 if (dump_level->type != lev_sz->requested_level)
  return 0;

 return nfp_traverse_tlvs(pf, dump_level->data,
     be32_to_cpu(dump_level->length),
     &lev_sz->total_size, nfp_add_tlv_size);
}
