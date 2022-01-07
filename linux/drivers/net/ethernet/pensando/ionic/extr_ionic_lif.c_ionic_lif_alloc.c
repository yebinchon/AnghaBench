
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int watchdog_timeo; int max_mtu; int min_mtu; int * netdev_ops; } ;
struct TYPE_5__ {int work; int list; int lock; } ;
struct ionic_lif {unsigned int index; int info_sz; int rss_ind_tbl_sz; struct net_device* netdev; scalar_t__ info_pa; int * info; int list; void* rss_ind_tbl; scalar_t__ rss_ind_tbl_pa; struct ionic* ionic; TYPE_1__ deferred; int adminq_lock; int name; int rx_coalesce_usecs; void* nrxq_descs; void* ntxq_descs; int nxqs; int neqs; } ;
struct TYPE_6__ {int rss_ind_tbl_sz; } ;
struct TYPE_7__ {TYPE_2__ eth; } ;
struct TYPE_8__ {TYPE_3__ lif; } ;
struct ionic {int lifs; TYPE_4__ ident; int ntxqs_per_lif; int neqs_per_lif; struct ionic_lif* master_lif; struct device* dev; } ;
struct device {int dummy; } ;


 int ALIGN (int,int ) ;
 int ENOMEM ;
 struct ionic_lif* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 void* IONIC_DEF_TXRX_DESC ;
 int IONIC_ITR_COAL_USEC_DEFAULT ;
 int IONIC_MAX_MTU ;
 int IONIC_MIN_MTU ;
 int PAGE_SIZE ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev_mqs (int,int ,int ) ;
 int dev_err (struct device*,char*) ;
 void* dma_alloc_coherent (struct device*,int,scalar_t__*,int ) ;
 int dma_free_coherent (struct device*,int,int *,scalar_t__) ;
 int free_netdev (struct net_device*) ;
 int ionic_coal_hw_to_usec (struct ionic*,int ) ;
 int ionic_coal_usec_to_hw (struct ionic*,int ) ;
 int ionic_ethtool_set_ops (struct net_device*) ;
 int ionic_lif_deferred_work ;
 int ionic_netdev_ops ;
 int ionic_qcqs_alloc (struct ionic_lif*) ;
 int ionic_qcqs_free (struct ionic_lif*) ;
 int le16_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,unsigned int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ionic_lif *ionic_lif_alloc(struct ionic *ionic, unsigned int index)
{
 struct device *dev = ionic->dev;
 struct net_device *netdev;
 struct ionic_lif *lif;
 int tbl_sz;
 u32 coal;
 int err;

 netdev = alloc_etherdev_mqs(sizeof(*lif),
        ionic->ntxqs_per_lif, ionic->ntxqs_per_lif);
 if (!netdev) {
  dev_err(dev, "Cannot allocate netdev, aborting\n");
  return ERR_PTR(-ENOMEM);
 }

 SET_NETDEV_DEV(netdev, dev);

 lif = netdev_priv(netdev);
 lif->netdev = netdev;
 ionic->master_lif = lif;
 netdev->netdev_ops = &ionic_netdev_ops;
 ionic_ethtool_set_ops(netdev);

 netdev->watchdog_timeo = 2 * HZ;
 netdev->min_mtu = IONIC_MIN_MTU;
 netdev->max_mtu = IONIC_MAX_MTU;

 lif->neqs = ionic->neqs_per_lif;
 lif->nxqs = ionic->ntxqs_per_lif;

 lif->ionic = ionic;
 lif->index = index;
 lif->ntxq_descs = IONIC_DEF_TXRX_DESC;
 lif->nrxq_descs = IONIC_DEF_TXRX_DESC;


 coal = ionic_coal_usec_to_hw(lif->ionic, IONIC_ITR_COAL_USEC_DEFAULT);
 lif->rx_coalesce_usecs = ionic_coal_hw_to_usec(lif->ionic, coal);

 snprintf(lif->name, sizeof(lif->name), "lif%u", index);

 spin_lock_init(&lif->adminq_lock);

 spin_lock_init(&lif->deferred.lock);
 INIT_LIST_HEAD(&lif->deferred.list);
 INIT_WORK(&lif->deferred.work, ionic_lif_deferred_work);


 lif->info_sz = ALIGN(sizeof(*lif->info), PAGE_SIZE);
 lif->info = dma_alloc_coherent(dev, lif->info_sz,
           &lif->info_pa, GFP_KERNEL);
 if (!lif->info) {
  dev_err(dev, "Failed to allocate lif info, aborting\n");
  err = -ENOMEM;
  goto err_out_free_netdev;
 }


 err = ionic_qcqs_alloc(lif);
 if (err)
  goto err_out_free_lif_info;


 tbl_sz = le16_to_cpu(lif->ionic->ident.lif.eth.rss_ind_tbl_sz);
 lif->rss_ind_tbl_sz = sizeof(*lif->rss_ind_tbl) * tbl_sz;
 lif->rss_ind_tbl = dma_alloc_coherent(dev, lif->rss_ind_tbl_sz,
           &lif->rss_ind_tbl_pa,
           GFP_KERNEL);

 if (!lif->rss_ind_tbl) {
  err = -ENOMEM;
  dev_err(dev, "Failed to allocate rss indirection table, aborting\n");
  goto err_out_free_qcqs;
 }

 list_add_tail(&lif->list, &ionic->lifs);

 return lif;

err_out_free_qcqs:
 ionic_qcqs_free(lif);
err_out_free_lif_info:
 dma_free_coherent(dev, lif->info_sz, lif->info, lif->info_pa);
 lif->info = ((void*)0);
 lif->info_pa = 0;
err_out_free_netdev:
 free_netdev(lif->netdev);
 lif = ((void*)0);

 return ERR_PTR(err);
}
