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
struct niu {int /*<<< orphan*/  port; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  XRXMAC_SW_RST ; 
 int XRXMAC_SW_RST_REG_RS ; 
 int XRXMAC_SW_RST_SOFT_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct niu *np)
{
	int limit;

	FUNC2(XRXMAC_SW_RST,
		 XRXMAC_SW_RST_REG_RS | XRXMAC_SW_RST_SOFT_RST);
	limit = 1000;
	while (--limit >= 0) {
		if (!(FUNC1(XRXMAC_SW_RST) & (XRXMAC_SW_RST_REG_RS |
						 XRXMAC_SW_RST_SOFT_RST)))
			break;
		FUNC3(100);
	}
	if (limit < 0) {
		FUNC0(np->device, "Port %u RX XMAC would not reset, XRXMAC_SW_RST[%llx]\n",
			np->port,
			(unsigned long long) FUNC1(XRXMAC_SW_RST));
		return -ENODEV;
	}

	return 0;
}