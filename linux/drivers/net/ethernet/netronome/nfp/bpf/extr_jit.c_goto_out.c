
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int BR_OFF_RELO ;
 int BR_UNC ;
 int RELO_BR_GO_OUT ;
 int emit_br_relo (struct nfp_prog*,int ,int ,int ,int ) ;

__attribute__((used)) static int goto_out(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 emit_br_relo(nfp_prog, BR_UNC, BR_OFF_RELO, 0, RELO_BR_GO_OUT);

 return 0;
}
