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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CURR_CFG_MET_OS ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  curr_cfg ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 

int FUNC10(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;
	struct bnx2x *bp = FUNC8(dev);
	int rc = 0;

	if (!FUNC6(addr->sa_data)) {
		FUNC0("Requested MAC address is not valid\n");
		return -EINVAL;
	}

	if (FUNC1(bp)) {
		FUNC0("Can't change address on STORAGE ONLY function\n");
		return -EINVAL;
	}

	if (FUNC9(dev))  {
		rc = FUNC5(bp, false);
		if (rc)
			return rc;
	}

	FUNC7(dev->dev_addr, addr->sa_data, dev->addr_len);

	if (FUNC9(dev))
		rc = FUNC5(bp, true);

	if (FUNC2(bp) && FUNC3(bp, curr_cfg))
		FUNC4(bp, curr_cfg, CURR_CFG_MET_OS);

	return rc;
}