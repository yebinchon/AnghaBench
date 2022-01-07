
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnxt_msix_entry {int ring_idx; int db_offset; int vector; } ;
struct bnxt_en_dev {TYPE_1__* ulp_tbl; } ;
struct bnxt {TYPE_2__* irq_tbl; struct bnxt_en_dev* edev; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int msix_requested; int msix_base; } ;


 size_t BNXT_ROCE_ULP ;

__attribute__((used)) static void bnxt_fill_msix_vecs(struct bnxt *bp, struct bnxt_msix_entry *ent)
{
 struct bnxt_en_dev *edev = bp->edev;
 int num_msix, idx, i;

 num_msix = edev->ulp_tbl[BNXT_ROCE_ULP].msix_requested;
 idx = edev->ulp_tbl[BNXT_ROCE_ULP].msix_base;
 for (i = 0; i < num_msix; i++) {
  ent[i].vector = bp->irq_tbl[idx + i].vector;
  ent[i].ring_idx = idx + i;
  ent[i].db_offset = (idx + i) * 0x80;
 }
}
