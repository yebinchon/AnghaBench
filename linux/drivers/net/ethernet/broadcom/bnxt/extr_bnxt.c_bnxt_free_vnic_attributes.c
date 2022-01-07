
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt_vnic_info {scalar_t__ flags; int * rss_hash_key; int * rss_table; int rss_table_dma_addr; int * mc_list; int mc_list_mapping; int mc_list_size; int * uc_list; int * fw_grp_ids; } ;
struct bnxt {int nr_vnics; struct bnxt_vnic_info* vnic_info; struct pci_dev* pdev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void bnxt_free_vnic_attributes(struct bnxt *bp)
{
 int i;
 struct bnxt_vnic_info *vnic;
 struct pci_dev *pdev = bp->pdev;

 if (!bp->vnic_info)
  return;

 for (i = 0; i < bp->nr_vnics; i++) {
  vnic = &bp->vnic_info[i];

  kfree(vnic->fw_grp_ids);
  vnic->fw_grp_ids = ((void*)0);

  kfree(vnic->uc_list);
  vnic->uc_list = ((void*)0);

  if (vnic->mc_list) {
   dma_free_coherent(&pdev->dev, vnic->mc_list_size,
       vnic->mc_list, vnic->mc_list_mapping);
   vnic->mc_list = ((void*)0);
  }

  if (vnic->rss_table) {
   dma_free_coherent(&pdev->dev, PAGE_SIZE,
       vnic->rss_table,
       vnic->rss_table_dma_addr);
   vnic->rss_table = ((void*)0);
  }

  vnic->rss_hash_key = ((void*)0);
  vnic->flags = 0;
 }
}
