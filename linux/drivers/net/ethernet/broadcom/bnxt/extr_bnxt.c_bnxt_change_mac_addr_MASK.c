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
struct bnxt {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,int,int) ; 
 int FUNC2 (struct bnxt*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnxt* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;
	struct bnxt *bp = FUNC6(dev);
	int rc = 0;

	if (!FUNC4(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (FUNC3(addr->sa_data, dev->dev_addr))
		return 0;

	rc = FUNC0(bp, addr->sa_data, true);
	if (rc)
		return rc;

	FUNC5(dev->dev_addr, addr->sa_data, dev->addr_len);
	if (FUNC7(dev)) {
		FUNC1(bp, false, false);
		rc = FUNC2(bp, false, false);
	}

	return rc;
}