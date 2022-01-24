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
typedef  scalar_t__ u32 ;
struct xge_pdata {TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_MEM_RDY ; 
 int /*<<< orphan*/  CFG_MEM_RAM_SHUTDOWN ; 
 int DEVM_ARAUX_COH ; 
 int DEVM_AWAUX_COH ; 
 int /*<<< orphan*/  ENET_CLKEN ; 
 int /*<<< orphan*/  ENET_SHIM ; 
 int /*<<< orphan*/  ENET_SRST ; 
 int ETIMEDOUT ; 
 scalar_t__ MEM_RDY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__) ; 
 struct xge_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct xge_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xge_pdata*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC1(ndev);
	struct device *dev = &pdata->pdev->dev;
	u32 data, wait = 10;

	FUNC4(pdata, ENET_CLKEN, 0x3);
	FUNC4(pdata, ENET_SRST, 0xf);
	FUNC4(pdata, ENET_SRST, 0);
	FUNC4(pdata, CFG_MEM_RAM_SHUTDOWN, 1);
	FUNC4(pdata, CFG_MEM_RAM_SHUTDOWN, 0);

	do {
		FUNC2(100, 110);
		data = FUNC3(pdata, BLOCK_MEM_RDY);
	} while (data != MEM_RDY && wait--);

	if (data != MEM_RDY) {
		FUNC0(dev, "ECC init failed: %x\n", data);
		return -ETIMEDOUT;
	}

	FUNC4(pdata, ENET_SHIM, DEVM_ARAUX_COH | DEVM_AWAUX_COH);

	return 0;
}