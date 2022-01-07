
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
typedef enum shf_sc { ____Placeholder_shf_sc } shf_sc ;


 int emit_ld_field_any (struct nfp_prog*,int ,int ,int ,int,int ,int) ;

__attribute__((used)) static void
emit_ld_field(struct nfp_prog *nfp_prog, swreg dst, u8 bmask, swreg src,
       enum shf_sc sc, u8 shift)
{
 emit_ld_field_any(nfp_prog, dst, bmask, src, sc, shift, 0);
}
