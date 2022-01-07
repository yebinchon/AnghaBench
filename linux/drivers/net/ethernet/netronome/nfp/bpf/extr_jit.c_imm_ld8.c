
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int double_cb; } ;


 int imm_ld8_part2 ;

__attribute__((used)) static int imm_ld8(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 meta->double_cb = imm_ld8_part2;
 return 0;
}
