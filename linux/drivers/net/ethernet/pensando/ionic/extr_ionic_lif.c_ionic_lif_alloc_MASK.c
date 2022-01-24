#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int watchdog_timeo; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  work; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct ionic_lif {unsigned int index; int info_sz; int rss_ind_tbl_sz; struct net_device* netdev; scalar_t__ info_pa; int /*<<< orphan*/ * info; int /*<<< orphan*/  list; void* rss_ind_tbl; scalar_t__ rss_ind_tbl_pa; struct ionic* ionic; TYPE_1__ deferred; int /*<<< orphan*/  adminq_lock; int /*<<< orphan*/  name; int /*<<< orphan*/  rx_coalesce_usecs; void* nrxq_descs; void* ntxq_descs; int /*<<< orphan*/  nxqs; int /*<<< orphan*/  neqs; } ;
struct TYPE_6__ {int /*<<< orphan*/  rss_ind_tbl_sz; } ;
struct TYPE_7__ {TYPE_2__ eth; } ;
struct TYPE_8__ {TYPE_3__ lif; } ;
struct ionic {int /*<<< orphan*/  lifs; TYPE_4__ ident; int /*<<< orphan*/  ntxqs_per_lif; int /*<<< orphan*/  neqs_per_lif; struct ionic_lif* master_lif; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct ionic_lif* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* IONIC_DEF_TXRX_DESC ; 
 int /*<<< orphan*/  IONIC_ITR_COAL_USEC_DEFAULT ; 
 int /*<<< orphan*/  IONIC_MAX_MTU ; 
 int /*<<< orphan*/  IONIC_MIN_MTU ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct device*) ; 
 struct net_device* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct device*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ionic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  ionic_lif_deferred_work ; 
 int /*<<< orphan*/  ionic_netdev_ops ; 
 int FUNC13 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC14 (struct ionic_lif*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ionic_lif* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ionic_lif *FUNC20(struct ionic *ionic, unsigned int index)
{
	struct device *dev = ionic->dev;
	struct net_device *netdev;
	struct ionic_lif *lif;
	int tbl_sz;
	u32 coal;
	int err;

	netdev = FUNC5(sizeof(*lif),
				    ionic->ntxqs_per_lif, ionic->ntxqs_per_lif);
	if (!netdev) {
		FUNC6(dev, "Cannot allocate netdev, aborting\n");
		return FUNC1(-ENOMEM);
	}

	FUNC4(netdev, dev);

	lif = FUNC17(netdev);
	lif->netdev = netdev;
	ionic->master_lif = lif;
	netdev->netdev_ops = &ionic_netdev_ops;
	FUNC12(netdev);

	netdev->watchdog_timeo = 2 * HZ;
	netdev->min_mtu = IONIC_MIN_MTU;
	netdev->max_mtu = IONIC_MAX_MTU;

	lif->neqs = ionic->neqs_per_lif;
	lif->nxqs = ionic->ntxqs_per_lif;

	lif->ionic = ionic;
	lif->index = index;
	lif->ntxq_descs = IONIC_DEF_TXRX_DESC;
	lif->nrxq_descs = IONIC_DEF_TXRX_DESC;

	/* Convert the default coalesce value to actual hw resolution */
	coal = FUNC11(lif->ionic, IONIC_ITR_COAL_USEC_DEFAULT);
	lif->rx_coalesce_usecs = FUNC10(lif->ionic, coal);

	FUNC18(lif->name, sizeof(lif->name), "lif%u", index);

	FUNC19(&lif->adminq_lock);

	FUNC19(&lif->deferred.lock);
	FUNC2(&lif->deferred.list);
	FUNC3(&lif->deferred.work, ionic_lif_deferred_work);

	/* allocate lif info */
	lif->info_sz = FUNC0(sizeof(*lif->info), PAGE_SIZE);
	lif->info = FUNC7(dev, lif->info_sz,
				       &lif->info_pa, GFP_KERNEL);
	if (!lif->info) {
		FUNC6(dev, "Failed to allocate lif info, aborting\n");
		err = -ENOMEM;
		goto err_out_free_netdev;
	}

	/* allocate queues */
	err = FUNC13(lif);
	if (err)
		goto err_out_free_lif_info;

	/* allocate rss indirection table */
	tbl_sz = FUNC15(lif->ionic->ident.lif.eth.rss_ind_tbl_sz);
	lif->rss_ind_tbl_sz = sizeof(*lif->rss_ind_tbl) * tbl_sz;
	lif->rss_ind_tbl = FUNC7(dev, lif->rss_ind_tbl_sz,
					      &lif->rss_ind_tbl_pa,
					      GFP_KERNEL);

	if (!lif->rss_ind_tbl) {
		err = -ENOMEM;
		FUNC6(dev, "Failed to allocate rss indirection table, aborting\n");
		goto err_out_free_qcqs;
	}

	FUNC16(&lif->list, &ionic->lifs);

	return lif;

err_out_free_qcqs:
	FUNC14(lif);
err_out_free_lif_info:
	FUNC8(dev, lif->info_sz, lif->info, lif->info_pa);
	lif->info = NULL;
	lif->info_pa = 0;
err_out_free_netdev:
	FUNC9(lif->netdev);
	lif = NULL;

	return FUNC1(err);
}