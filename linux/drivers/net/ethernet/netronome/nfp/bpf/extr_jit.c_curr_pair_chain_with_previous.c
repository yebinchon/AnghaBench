
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bpf_insn {scalar_t__ src_reg; scalar_t__ dst_reg; scalar_t__ off; } ;
struct nfp_insn_meta {int flags; struct bpf_insn insn; } ;
typedef scalar_t__ s16 ;


 scalar_t__ BPF_LDST_BYTES (struct bpf_insn*) ;
 int FLAG_INSN_IS_JUMP_DST ;

__attribute__((used)) static bool
curr_pair_chain_with_previous(struct nfp_insn_meta *ld_meta,
         struct nfp_insn_meta *st_meta,
         struct bpf_insn *prev_ld,
         struct bpf_insn *prev_st)
{
 u8 prev_size, curr_size, prev_ld_base, prev_st_base, prev_ld_dst;
 struct bpf_insn *ld = &ld_meta->insn;
 struct bpf_insn *st = &st_meta->insn;
 s16 prev_ld_off, prev_st_off;


 if (!prev_ld)
  return 1;

 prev_size = BPF_LDST_BYTES(prev_ld);
 curr_size = BPF_LDST_BYTES(ld);
 prev_ld_base = prev_ld->src_reg;
 prev_st_base = prev_st->dst_reg;
 prev_ld_dst = prev_ld->dst_reg;
 prev_ld_off = prev_ld->off;
 prev_st_off = prev_st->off;

 if (ld->dst_reg != prev_ld_dst)
  return 0;

 if (ld->src_reg != prev_ld_base || st->dst_reg != prev_st_base)
  return 0;

 if (curr_size != prev_size)
  return 0;


 if (ld_meta->flags & FLAG_INSN_IS_JUMP_DST)
  return 0;


 if (prev_ld_off + prev_size == ld->off &&
     prev_st_off + prev_size == st->off)
  return 1;


 if (ld->off + curr_size == prev_ld_off &&
     st->off + curr_size == prev_st_off)
  return 1;

 return 0;
}
