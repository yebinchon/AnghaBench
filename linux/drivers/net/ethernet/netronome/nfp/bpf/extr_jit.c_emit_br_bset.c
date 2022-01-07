
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;


 int RELO_BR_REL ;
 int emit_br_bit_relo (struct nfp_prog*,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static void
emit_br_bset(struct nfp_prog *nfp_prog, swreg src, u8 bit, u16 addr, u8 defer)
{
 emit_br_bit_relo(nfp_prog, src, bit, addr, defer, 1, RELO_BR_REL);
}
