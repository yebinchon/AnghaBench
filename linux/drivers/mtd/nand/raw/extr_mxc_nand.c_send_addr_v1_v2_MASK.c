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
typedef  int /*<<< orphan*/  uint16_t ;
struct mxc_nand_host {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_ADDR ; 
 int /*<<< orphan*/  NFC_V1_V2_CONFIG2 ; 
 int /*<<< orphan*/  NFC_V1_V2_FLASH_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mxc_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mxc_nand_host *host, uint16_t addr, int islast)
{
	FUNC0(host->dev, "send_addr(host, 0x%x %d)\n", addr, islast);

	FUNC2(addr, NFC_V1_V2_FLASH_ADDR);
	FUNC2(NFC_ADDR, NFC_V1_V2_CONFIG2);

	/* Wait for operation to complete */
	FUNC1(host, islast);
}