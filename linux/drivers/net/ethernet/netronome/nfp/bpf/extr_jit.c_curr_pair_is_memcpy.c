
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct bpf_insn {scalar_t__ dst_reg; scalar_t__ src_reg; int code; } ;
struct nfp_insn_meta {int flags; TYPE_1__ ptr; struct bpf_insn insn; } ;


 scalar_t__ BPF_SIZE (int ) ;
 int FLAG_INSN_IS_JUMP_DST ;
 scalar_t__ PTR_TO_MAP_VALUE ;
 scalar_t__ PTR_TO_PACKET ;
 int is_mbpf_load (struct nfp_insn_meta*) ;
 int is_mbpf_store (struct nfp_insn_meta*) ;

__attribute__((used)) static bool
curr_pair_is_memcpy(struct nfp_insn_meta *ld_meta,
      struct nfp_insn_meta *st_meta)
{
 struct bpf_insn *ld = &ld_meta->insn;
 struct bpf_insn *st = &st_meta->insn;

 if (!is_mbpf_load(ld_meta) || !is_mbpf_store(st_meta))
  return 0;

 if (ld_meta->ptr.type != PTR_TO_PACKET &&
     ld_meta->ptr.type != PTR_TO_MAP_VALUE)
  return 0;

 if (st_meta->ptr.type != PTR_TO_PACKET)
  return 0;

 if (BPF_SIZE(ld->code) != BPF_SIZE(st->code))
  return 0;

 if (ld->dst_reg != st->src_reg)
  return 0;


 if (st_meta->flags & FLAG_INSN_IS_JUMP_DST)
  return 0;

 return 1;
}
