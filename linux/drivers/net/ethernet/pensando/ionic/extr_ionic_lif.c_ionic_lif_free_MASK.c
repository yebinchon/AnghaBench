#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ionic_lif {int /*<<< orphan*/  netdev; int /*<<< orphan*/  list; int /*<<< orphan*/ * dbid_inuse; int /*<<< orphan*/ * kern_dbpage; TYPE_1__* ionic; scalar_t__ info_pa; int /*<<< orphan*/ * info; int /*<<< orphan*/  info_sz; scalar_t__ rss_ind_tbl_pa; int /*<<< orphan*/ * rss_ind_tbl; int /*<<< orphan*/  rss_ind_tbl_sz; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC5 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ionic_lif *lif)
{
	struct device *dev = lif->ionic->dev;

	/* free rss indirection table */
	FUNC0(dev, lif->rss_ind_tbl_sz, lif->rss_ind_tbl,
			  lif->rss_ind_tbl_pa);
	lif->rss_ind_tbl = NULL;
	lif->rss_ind_tbl_pa = 0;

	/* free queues */
	FUNC5(lif);
	FUNC4(lif);

	/* free lif info */
	FUNC0(dev, lif->info_sz, lif->info, lif->info_pa);
	lif->info = NULL;
	lif->info_pa = 0;

	/* unmap doorbell page */
	FUNC2(lif->ionic, lif->kern_dbpage);
	lif->kern_dbpage = NULL;
	FUNC6(lif->dbid_inuse);
	lif->dbid_inuse = NULL;

	/* free netdev & lif */
	FUNC3(lif);
	FUNC7(&lif->list);
	FUNC1(lif->netdev);
}