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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_fid; } ;
struct bnxt {TYPE_1__ pf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_FID_INVALID ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct bnxt* FUNC4 (struct net_device*) ; 

__attribute__((used)) static u16 FUNC5(struct bnxt *pf_bp, struct net_device *dev)
{
	struct bnxt *bp;

	/* check if dev belongs to the same switch */
	if (!FUNC3(pf_bp->dev, dev)) {
		FUNC2(pf_bp->dev, "dev(ifindex=%d) not on same switch",
			    dev->ifindex);
		return BNXT_FID_INVALID;
	}

	/* Is dev a VF-rep? */
	if (FUNC0(dev))
		return FUNC1(dev);

	bp = FUNC4(dev);
	return bp->pf.fw_fid;
}