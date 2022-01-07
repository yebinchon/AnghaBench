
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct bnxt_cp_ring_info {int dim; } ;
struct bnxt {int cp_nr_rings; TYPE_1__** bnapi; void* debugfs_pdev; int pdev; } ;
struct TYPE_2__ {scalar_t__ rx_ring; struct bnxt_cp_ring_info cp_ring; } ;


 void* bnxt_debug_mnt ;
 void* debugfs_create_dir (char const*,void*) ;
 int debugfs_dim_ring_init (int *,int,struct dentry*) ;
 char* pci_name (int ) ;

void bnxt_debug_dev_init(struct bnxt *bp)
{
 const char *pname = pci_name(bp->pdev);
 struct dentry *dir;
 int i;

 bp->debugfs_pdev = debugfs_create_dir(pname, bnxt_debug_mnt);
 dir = debugfs_create_dir("dim", bp->debugfs_pdev);


 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_cp_ring_info *cpr = &bp->bnapi[i]->cp_ring;

  if (cpr && bp->bnapi[i]->rx_ring)
   debugfs_dim_ring_init(&cpr->dim, i, dir);
 }
}
