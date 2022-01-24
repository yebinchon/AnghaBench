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
typedef  int u8 ;
typedef  int u32 ;
struct xgene_mdio_pdata {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MENET_BLOCK_MEM_RDY_ADDR ; 
 int /*<<< orphan*/  MENET_CFG_MEM_RAM_SHUTDOWN_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct xgene_mdio_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_mdio_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct xgene_mdio_pdata *pdata)
{
	u32 data;
	u8 wait = 10;

	FUNC3(pdata, MENET_CFG_MEM_RAM_SHUTDOWN_ADDR, 0x0);
	do {
		FUNC1(100, 110);
		data = FUNC2(pdata, MENET_BLOCK_MEM_RDY_ADDR);
	} while ((data != 0xffffffff) && wait--);

	if (data != 0xffffffff) {
		FUNC0(pdata->dev, "Failed to release memory from shutdown\n");
		return -ENODEV;
	}

	return 0;
}