
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; } ;
struct nfp_insn_meta {int umin_src; TYPE_1__ insn; } ;


 int wrp_div_imm (struct nfp_prog*,int,int ) ;

__attribute__((used)) static int div_reg64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{



 return wrp_div_imm(nfp_prog, meta->insn.dst_reg * 2, meta->umin_src);
}
