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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_enet_pdata {int /*<<< orphan*/  mss_lock; int /*<<< orphan*/ * mss; TYPE_1__* mac_ops; int /*<<< orphan*/ * mss_refcnt; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_mss ) (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int NUM_MSS_REG ; 
 struct xgene_enet_pdata* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, u32 mss)
{
	struct xgene_enet_pdata *pdata = FUNC0(ndev);
	int mss_index = -EBUSY;
	int i;

	FUNC1(&pdata->mss_lock);

	/* Reuse the slot if MSS matches */
	for (i = 0; mss_index < 0 && i < NUM_MSS_REG; i++) {
		if (pdata->mss[i] == mss) {
			pdata->mss_refcnt[i]++;
			mss_index = i;
		}
	}

	/* Overwrite the slot with ref_count = 0 */
	for (i = 0; mss_index < 0 && i < NUM_MSS_REG; i++) {
		if (!pdata->mss_refcnt[i]) {
			pdata->mss_refcnt[i]++;
			pdata->mac_ops->set_mss(pdata, mss, i);
			pdata->mss[i] = mss;
			mss_index = i;
		}
	}

	FUNC2(&pdata->mss_lock);

	return mss_index;
}