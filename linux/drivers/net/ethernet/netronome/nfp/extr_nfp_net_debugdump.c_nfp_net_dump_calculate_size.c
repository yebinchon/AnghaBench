
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_pf {int dummy; } ;
struct nfp_level_size {int total_size; int requested_level; } ;
struct nfp_dumpspec {int size; int data; } ;
struct nfp_dump_prolog {int dummy; } ;
typedef int s64 ;


 int ALIGN8 (int) ;
 int cpu_to_be32 (int ) ;
 int nfp_calc_specific_level_size ;
 int nfp_traverse_tlvs (struct nfp_pf*,int ,int ,struct nfp_level_size*,int ) ;

s64 nfp_net_dump_calculate_size(struct nfp_pf *pf, struct nfp_dumpspec *spec,
    u32 flag)
{
 struct nfp_level_size lev_sz;
 int err;

 lev_sz.requested_level = cpu_to_be32(flag);
 lev_sz.total_size = ALIGN8(sizeof(struct nfp_dump_prolog));

 err = nfp_traverse_tlvs(pf, spec->data, spec->size, &lev_sz,
    nfp_calc_specific_level_size);
 if (err)
  return err;

 return lev_sz.total_size;
}
