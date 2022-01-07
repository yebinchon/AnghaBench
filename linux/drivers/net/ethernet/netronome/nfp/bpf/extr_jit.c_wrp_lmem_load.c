
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
typedef int s32 ;
typedef enum shf_sc { ____Placeholder_shf_sc } shf_sc ;


 int EOPNOTSUPP ;
 unsigned int RE_REG_LM_IDX_MAX ;
 int SHF_SC_L_SHF ;
 int SHF_SC_NONE ;
 int SHF_SC_R_SHF ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int abs (unsigned int) ;
 int emit_ld_field_any (struct nfp_prog*,int ,unsigned int,int ,int,int,int) ;
 int imm_a (struct nfp_prog*) ;
 int reg_both (unsigned int) ;
 int reg_lm (int,unsigned int) ;
 int reg_lm_inc (int) ;
 int reg_none () ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
wrp_lmem_load(struct nfp_prog *nfp_prog, u8 dst, u8 dst_byte, s32 off,
       unsigned int size, bool first, bool new_gpr, bool last, bool lm3,
       bool needs_inc)
{
 bool should_inc = needs_inc && new_gpr && !last;
 u32 idx, src_byte;
 enum shf_sc sc;
 swreg reg;
 int shf;
 u8 mask;

 if (WARN_ON_ONCE(dst_byte + size > 4 || off % 4 + size > 4))
  return -EOPNOTSUPP;

 idx = off / 4;


 if (size == 4) {
  wrp_mov(nfp_prog, reg_both(dst),
   should_inc ? reg_lm_inc(3) : reg_lm(lm3 ? 3 : 0, idx));
  return 0;
 }

 if (WARN_ON_ONCE(lm3 && idx > RE_REG_LM_IDX_MAX))
  return -EOPNOTSUPP;

 src_byte = off % 4;

 mask = (1 << size) - 1;
 mask <<= dst_byte;

 if (WARN_ON_ONCE(mask > 0xf))
  return -EOPNOTSUPP;

 shf = abs(src_byte - dst_byte) * 8;
 if (src_byte == dst_byte) {
  sc = SHF_SC_NONE;
 } else if (src_byte < dst_byte) {
  shf = 32 - shf;
  sc = SHF_SC_L_SHF;
 } else {
  sc = SHF_SC_R_SHF;
 }




 if (idx <= RE_REG_LM_IDX_MAX) {
  reg = reg_lm(lm3 ? 3 : 0, idx);
 } else {
  reg = imm_a(nfp_prog);





  if (first || !new_gpr)
   wrp_mov(nfp_prog, reg, reg_lm(0, idx));
 }

 emit_ld_field_any(nfp_prog, reg_both(dst), mask, reg, sc, shf, new_gpr);

 if (should_inc)
  wrp_mov(nfp_prog, reg_none(), reg_lm_inc(3));

 return 0;
}
