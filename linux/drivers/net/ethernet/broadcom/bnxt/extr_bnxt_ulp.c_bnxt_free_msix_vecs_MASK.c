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
struct net_device {int dummy; } ;
struct bnxt_en_dev {int flags; TYPE_1__* ulp_tbl; struct net_device* net; } ;
struct bnxt {int dummy; } ;
struct TYPE_2__ {scalar_t__ msix_requested; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int BNXT_EN_FLAG_MSIX_REQUESTED ; 
 int BNXT_ROCE_ULP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int,int) ; 
 struct bnxt* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct bnxt_en_dev *edev, int ulp_id)
{
	struct net_device *dev = edev->net;
	struct bnxt *bp = FUNC3(dev);

	FUNC0();
	if (ulp_id != BNXT_ROCE_ULP)
		return -EINVAL;

	if (!(edev->flags & BNXT_EN_FLAG_MSIX_REQUESTED))
		return 0;

	edev->ulp_tbl[ulp_id].msix_requested = 0;
	edev->flags &= ~BNXT_EN_FLAG_MSIX_REQUESTED;
	if (FUNC4(dev)) {
		FUNC1(bp, true, false);
		FUNC2(bp, true, false);
	}
	return 0;
}