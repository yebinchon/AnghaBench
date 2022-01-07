
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_hwinfo {int total_pfs; } ;
struct rvu {struct rvu_hwinfo* hw; } ;


 int BLKADDR_RVUM ;
 unsigned long long INTR_MASK (int ) ;
 int RVU_AF_PFAF_MBOX_INT ;
 int RVU_AF_PFAF_MBOX_INT_ENA_W1S ;
 int rvu_write64 (struct rvu*,int ,int ,unsigned long long) ;

__attribute__((used)) static void rvu_enable_mbox_intr(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;


 rvu_write64(rvu, BLKADDR_RVUM,
      RVU_AF_PFAF_MBOX_INT, INTR_MASK(hw->total_pfs));


 rvu_write64(rvu, BLKADDR_RVUM, RVU_AF_PFAF_MBOX_INT_ENA_W1S,
      INTR_MASK(hw->total_pfs) & ~1ULL);
}
