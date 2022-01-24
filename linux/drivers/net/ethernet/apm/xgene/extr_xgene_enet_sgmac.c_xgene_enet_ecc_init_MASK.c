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
typedef  unsigned int u32 ;
struct xgene_enet_pdata {struct net_device* ndev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENET_BLOCK_MEM_RDY_ADDR ; 
 int /*<<< orphan*/  ENET_CFG_MEM_RAM_SHUTDOWN_ADDR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 unsigned int FUNC3 (struct xgene_enet_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct xgene_enet_pdata *p)
{
	struct net_device *ndev = p->ndev;
	u32 data, shutdown;
	int i = 0;

	shutdown = FUNC3(p, ENET_CFG_MEM_RAM_SHUTDOWN_ADDR);
	data = FUNC3(p, ENET_BLOCK_MEM_RDY_ADDR);

	if (!shutdown && data == ~0U) {
		FUNC0(ndev, "+ ecc_init done, skipping\n");
		return 0;
	}

	FUNC4(p, ENET_CFG_MEM_RAM_SHUTDOWN_ADDR, 0);
	do {
		FUNC2(100, 110);
		data = FUNC3(p, ENET_BLOCK_MEM_RDY_ADDR);
		if (data == ~0U)
			return 0;
	} while (++i < 10);

	FUNC1(ndev, "Failed to release memory from shutdown\n");
	return -ENODEV;
}