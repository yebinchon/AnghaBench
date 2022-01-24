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
struct tid_info {int nftids; int /*<<< orphan*/  ftid_lock; int /*<<< orphan*/  ftid_bmap; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; struct tid_info tids; } ;

/* Variables and functions */
 int PF_INET ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *dev, int family)
{
	struct adapter *adap = FUNC4(dev);
	struct tid_info *t = &adap->tids;
	int ftid;

	FUNC5(&t->ftid_lock);
	if (family == PF_INET) {
		ftid = FUNC2(t->ftid_bmap, t->nftids);
		if (ftid >= t->nftids)
			ftid = -1;
	} else {
		if (FUNC3(adap->params.chip)) {
			ftid = FUNC0(t->ftid_bmap,
						       t->nftids, 1);
			if (ftid < 0)
				goto out_unlock;

			/* this is only a lookup, keep the found region
			 * unallocated
			 */
			FUNC1(t->ftid_bmap, ftid, 1);
		} else {
			ftid = FUNC0(t->ftid_bmap,
						       t->nftids, 2);
			if (ftid < 0)
				goto out_unlock;

			FUNC1(t->ftid_bmap, ftid, 2);
		}
	}
out_unlock:
	FUNC6(&t->ftid_lock);
	return ftid;
}