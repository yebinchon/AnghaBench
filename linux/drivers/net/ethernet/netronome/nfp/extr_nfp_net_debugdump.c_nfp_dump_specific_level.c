
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;
struct nfp_dump_tl {scalar_t__ type; int length; int data; } ;
struct nfp_dump_state {scalar_t__ requested_level; } ;


 int be32_to_cpu (int ) ;
 int nfp_dump_for_tlv ;
 int nfp_traverse_tlvs (struct nfp_pf*,int ,int ,struct nfp_dump_state*,int ) ;

__attribute__((used)) static int
nfp_dump_specific_level(struct nfp_pf *pf, struct nfp_dump_tl *dump_level,
   void *param)
{
 struct nfp_dump_state *dump = param;

 if (dump_level->type != dump->requested_level)
  return 0;

 return nfp_traverse_tlvs(pf, dump_level->data,
     be32_to_cpu(dump_level->length), dump,
     nfp_dump_for_tlv);
}
