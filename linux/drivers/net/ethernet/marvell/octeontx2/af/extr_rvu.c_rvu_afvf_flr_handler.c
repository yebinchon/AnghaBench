
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dummy; } ;


 int BIT_ULL (int) ;
 int RVU_PF_VFFLR_INT_ENA_W1SX (int) ;
 int RVU_PF_VFTRPENDX (int) ;
 int __rvu_flr_handler (struct rvu*,int) ;
 int rvupf_write64 (struct rvu*,int ,int ) ;

__attribute__((used)) static void rvu_afvf_flr_handler(struct rvu *rvu, int vf)
{
 int reg = 0;


 __rvu_flr_handler(rvu, vf + 1);

 if (vf >= 64) {
  reg = 1;
  vf = vf - 64;
 }


 rvupf_write64(rvu, RVU_PF_VFTRPENDX(reg), BIT_ULL(vf));
 rvupf_write64(rvu, RVU_PF_VFFLR_INT_ENA_W1SX(reg), BIT_ULL(vf));
}
