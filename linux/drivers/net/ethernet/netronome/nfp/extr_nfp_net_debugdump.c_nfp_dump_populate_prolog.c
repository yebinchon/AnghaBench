
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_dump_state {int requested_level; struct nfp_dump_prolog* p; } ;
struct nfp_dump_prolog {int dump_level; } ;


 int ALIGN8 (int) ;
 int NFP_DUMPSPEC_TYPE_PROLOG ;
 int nfp_add_tlv (int ,int ,struct nfp_dump_state*) ;

__attribute__((used)) static int nfp_dump_populate_prolog(struct nfp_dump_state *dump)
{
 struct nfp_dump_prolog *prolog = dump->p;
 u32 total_size;
 int err;

 total_size = ALIGN8(sizeof(*prolog));

 err = nfp_add_tlv(NFP_DUMPSPEC_TYPE_PROLOG, total_size, dump);
 if (err)
  return err;

 prolog->dump_level = dump->requested_level;

 return 0;
}
