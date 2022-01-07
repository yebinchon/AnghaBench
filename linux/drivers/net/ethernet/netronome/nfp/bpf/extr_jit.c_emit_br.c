
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nfp_prog {int dummy; } ;
typedef enum br_mask { ____Placeholder_br_mask } br_mask ;


 int RELO_BR_REL ;
 int emit_br_relo (struct nfp_prog*,int,int ,int ,int ) ;

__attribute__((used)) static void
emit_br(struct nfp_prog *nfp_prog, enum br_mask mask, u16 addr, u8 defer)
{
 emit_br_relo(nfp_prog, mask, addr, defer, RELO_BR_REL);
}
