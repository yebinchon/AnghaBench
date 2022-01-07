
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int off; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int BR_UNC ;
 int emit_br (struct nfp_prog*,int ,int ,int ) ;

__attribute__((used)) static int jump(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 emit_br(nfp_prog, BR_UNC, meta->insn.off, 0);

 return 0;
}
