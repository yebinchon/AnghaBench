
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct rvu {int dummy; } ;


 int BIT_ULL (int) ;
 int RVU_PF_VFME_INTX (int) ;
 int RVU_PF_VFTRPENDX (int) ;
 int rvupf_write64 (struct rvu*,int ,int ) ;

__attribute__((used)) static void rvu_me_handle_vfset(struct rvu *rvu, int idx, u64 intr)
{
 int vf;




 for (vf = 0; vf < 64; vf++) {
  if (intr & (1ULL << vf)) {

   rvupf_write64(rvu, RVU_PF_VFTRPENDX(idx), BIT_ULL(vf));

   rvupf_write64(rvu, RVU_PF_VFME_INTX(idx), BIT_ULL(vf));
  }
 }
}
