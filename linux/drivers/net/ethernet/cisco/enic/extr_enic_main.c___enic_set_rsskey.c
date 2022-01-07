
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union vnic_rss_key {TYPE_1__* key; } ;
struct enic {int pdev; int devcmd_lock; int * rss_key; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * b; } ;


 int ENIC_RSS_BYTES_PER_KEY ;
 int ENIC_RSS_LEN ;
 int ENOMEM ;
 int enic_set_rss_key (struct enic*,int ,int) ;
 int pci_free_consistent (int ,int,union vnic_rss_key*,int ) ;
 union vnic_rss_key* pci_zalloc_consistent (int ,int,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int __enic_set_rsskey(struct enic *enic)
{
 union vnic_rss_key *rss_key_buf_va;
 dma_addr_t rss_key_buf_pa;
 int i, kidx, bidx, err;

 rss_key_buf_va = pci_zalloc_consistent(enic->pdev,
            sizeof(union vnic_rss_key),
            &rss_key_buf_pa);
 if (!rss_key_buf_va)
  return -ENOMEM;

 for (i = 0; i < ENIC_RSS_LEN; i++) {
  kidx = i / ENIC_RSS_BYTES_PER_KEY;
  bidx = i % ENIC_RSS_BYTES_PER_KEY;
  rss_key_buf_va->key[kidx].b[bidx] = enic->rss_key[i];
 }
 spin_lock_bh(&enic->devcmd_lock);
 err = enic_set_rss_key(enic,
  rss_key_buf_pa,
  sizeof(union vnic_rss_key));
 spin_unlock_bh(&enic->devcmd_lock);

 pci_free_consistent(enic->pdev, sizeof(union vnic_rss_key),
  rss_key_buf_va, rss_key_buf_pa);

 return err;
}
