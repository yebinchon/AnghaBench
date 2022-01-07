
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int flags; } ;


 int FLAG_INSN_DO_ZEXT ;
 int reg_both (scalar_t__) ;
 int wrp_immed (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void
wrp_zext(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, u8 dst)
{
 if (meta->flags & FLAG_INSN_DO_ZEXT)
  wrp_immed(nfp_prog, reg_both(dst + 1), 0);
}
