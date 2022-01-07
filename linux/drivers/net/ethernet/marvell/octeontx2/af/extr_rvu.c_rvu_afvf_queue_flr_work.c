
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rvu {TYPE_2__* flr_wrk; int flr_wq; TYPE_1__* hw; } ;
struct TYPE_4__ {int work; } ;
struct TYPE_3__ {int total_pfs; } ;


 int BIT_ULL (int) ;
 int RVU_PF_VFFLR_INTX (int) ;
 int RVU_PF_VFFLR_INT_ENA_W1CX (int) ;
 int queue_work (int ,int *) ;
 int rvupf_read64 (struct rvu*,int ) ;
 int rvupf_write64 (struct rvu*,int ,int) ;

__attribute__((used)) static void rvu_afvf_queue_flr_work(struct rvu *rvu, int start_vf, int numvfs)
{
 int dev, vf, reg = 0;
 u64 intr;

 if (start_vf >= 64)
  reg = 1;

 intr = rvupf_read64(rvu, RVU_PF_VFFLR_INTX(reg));
 if (!intr)
  return;

 for (vf = 0; vf < numvfs; vf++) {
  if (!(intr & BIT_ULL(vf)))
   continue;
  dev = vf + start_vf + rvu->hw->total_pfs;
  queue_work(rvu->flr_wq, &rvu->flr_wrk[dev].work);

  rvupf_write64(rvu, RVU_PF_VFFLR_INTX(reg), BIT_ULL(vf));
  rvupf_write64(rvu, RVU_PF_VFFLR_INT_ENA_W1CX(reg), BIT_ULL(vf));
 }
}
