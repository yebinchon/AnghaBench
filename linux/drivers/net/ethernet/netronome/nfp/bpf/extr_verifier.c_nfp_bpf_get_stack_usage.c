
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_prog {TYPE_1__* subprog; } ;
struct TYPE_4__ {scalar_t__ imm; } ;
struct nfp_insn_meta {unsigned short subprog_idx; TYPE_2__ insn; scalar_t__ n; } ;
struct TYPE_3__ {unsigned short stack_depth; } ;


 int MAX_CALL_FRAMES ;
 int STACK_FRAME_ALIGN ;
 int is_mbpf_pseudo_call (struct nfp_insn_meta*) ;
 unsigned int max (unsigned int,unsigned int) ;
 struct nfp_insn_meta* nfp_bpf_goto_meta (struct nfp_prog*,struct nfp_insn_meta*,scalar_t__) ;
 struct nfp_insn_meta* nfp_meta_next (struct nfp_insn_meta*) ;
 struct nfp_insn_meta* nfp_prog_first_meta (struct nfp_prog*) ;
 struct nfp_insn_meta* nfp_prog_last_meta (struct nfp_prog*) ;
 unsigned short round_up (unsigned short,int ) ;

__attribute__((used)) static unsigned int nfp_bpf_get_stack_usage(struct nfp_prog *nfp_prog)
{
 struct nfp_insn_meta *meta = nfp_prog_first_meta(nfp_prog);
 unsigned int max_depth = 0, depth = 0, frame = 0;
 struct nfp_insn_meta *ret_insn[MAX_CALL_FRAMES];
 unsigned short frame_depths[MAX_CALL_FRAMES];
 unsigned short ret_prog[MAX_CALL_FRAMES];
 unsigned short idx = meta->subprog_idx;







process_subprog:
 frame_depths[frame] = nfp_prog->subprog[idx].stack_depth;
 frame_depths[frame] = round_up(frame_depths[frame], STACK_FRAME_ALIGN);
 depth += frame_depths[frame];
 max_depth = max(max_depth, depth);

continue_subprog:
 for (; meta != nfp_prog_last_meta(nfp_prog) && meta->subprog_idx == idx;
      meta = nfp_meta_next(meta)) {
  if (!is_mbpf_pseudo_call(meta))
   continue;




  ret_insn[frame] = nfp_meta_next(meta);
  ret_prog[frame] = idx;


  meta = nfp_bpf_goto_meta(nfp_prog, meta,
      meta->n + 1 + meta->insn.imm);
  idx = meta->subprog_idx;
  frame++;
  goto process_subprog;
 }




 if (frame == 0)
  return max_depth;

 depth -= frame_depths[frame];
 frame--;
 meta = ret_insn[frame];
 idx = ret_prog[frame];
 goto continue_subprog;
}
