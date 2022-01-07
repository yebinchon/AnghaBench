
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_lif {int netdev; int list; int * dbid_inuse; int * kern_dbpage; TYPE_1__* ionic; scalar_t__ info_pa; int * info; int info_sz; scalar_t__ rss_ind_tbl_pa; int * rss_ind_tbl; int rss_ind_tbl_sz; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int dma_free_coherent (struct device*,int ,int *,scalar_t__) ;
 int free_netdev (int ) ;
 int ionic_bus_unmap_dbpage (TYPE_1__*,int *) ;
 int ionic_debugfs_del_lif (struct ionic_lif*) ;
 int ionic_lif_reset (struct ionic_lif*) ;
 int ionic_qcqs_free (struct ionic_lif*) ;
 int kfree (int *) ;
 int list_del (int *) ;

__attribute__((used)) static void ionic_lif_free(struct ionic_lif *lif)
{
 struct device *dev = lif->ionic->dev;


 dma_free_coherent(dev, lif->rss_ind_tbl_sz, lif->rss_ind_tbl,
     lif->rss_ind_tbl_pa);
 lif->rss_ind_tbl = ((void*)0);
 lif->rss_ind_tbl_pa = 0;


 ionic_qcqs_free(lif);
 ionic_lif_reset(lif);


 dma_free_coherent(dev, lif->info_sz, lif->info, lif->info_pa);
 lif->info = ((void*)0);
 lif->info_pa = 0;


 ionic_bus_unmap_dbpage(lif->ionic, lif->kern_dbpage);
 lif->kern_dbpage = ((void*)0);
 kfree(lif->dbid_inuse);
 lif->dbid_inuse = ((void*)0);


 ionic_debugfs_del_lif(lif);
 list_del(&lif->list);
 free_netdev(lif->netdev);
}
