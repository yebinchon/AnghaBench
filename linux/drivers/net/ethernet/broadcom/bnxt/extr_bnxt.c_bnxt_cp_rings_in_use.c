
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int flags; int tx_nr_rings; int rx_nr_rings; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int bnxt_nq_rings_in_use (struct bnxt*) ;

__attribute__((used)) static int bnxt_cp_rings_in_use(struct bnxt *bp)
{
 int cp;

 if (!(bp->flags & BNXT_FLAG_CHIP_P5))
  return bnxt_nq_rings_in_use(bp);

 cp = bp->tx_nr_rings + bp->rx_nr_rings;
 return cp;
}
