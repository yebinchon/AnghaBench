
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int type; } ;




 int WARN_ON (int) ;
 int nfp_outro_tc_da (struct nfp_prog*) ;
 int nfp_outro_xdp (struct nfp_prog*) ;
 int nfp_pop_callee_registers (struct nfp_prog*) ;
 int nfp_prog_needs_callee_reg_save (struct nfp_prog*) ;
 int nfp_push_callee_registers (struct nfp_prog*) ;

__attribute__((used)) static void nfp_outro(struct nfp_prog *nfp_prog)
{
 switch (nfp_prog->type) {
 case 129:
  nfp_outro_tc_da(nfp_prog);
  break;
 case 128:
  nfp_outro_xdp(nfp_prog);
  break;
 default:
  WARN_ON(1);
 }

 if (!nfp_prog_needs_callee_reg_save(nfp_prog))
  return;

 nfp_push_callee_registers(nfp_prog);
 nfp_pop_callee_registers(nfp_prog);
}
