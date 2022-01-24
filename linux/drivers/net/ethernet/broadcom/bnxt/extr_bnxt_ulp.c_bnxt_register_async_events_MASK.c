#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct bnxt_ulp {unsigned long* async_events_bmap; scalar_t__ max_async_event_id; } ;
struct bnxt_en_dev {struct bnxt_ulp* ulp_tbl; struct net_device* net; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int BNXT_MAX_ULP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,unsigned long*,scalar_t__) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct bnxt_en_dev *edev, int ulp_id,
				      unsigned long *events_bmap, u16 max_id)
{
	struct net_device *dev = edev->net;
	struct bnxt *bp = FUNC1(dev);
	struct bnxt_ulp *ulp;

	if (ulp_id >= BNXT_MAX_ULP)
		return -EINVAL;

	ulp = &edev->ulp_tbl[ulp_id];
	ulp->async_events_bmap = events_bmap;
	/* Make sure bnxt_ulp_async_events() sees this order */
	FUNC2();
	ulp->max_async_event_id = max_id;
	FUNC0(bp, events_bmap, max_id + 1);
	return 0;
}