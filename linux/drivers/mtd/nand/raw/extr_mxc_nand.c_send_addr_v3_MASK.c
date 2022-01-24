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
struct mxc_nand_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_ADDR ; 
 int /*<<< orphan*/  NFC_V3_FLASH_ADDR0 ; 
 int /*<<< orphan*/  NFC_V3_LAUNCH ; 
 int /*<<< orphan*/  FUNC0 (struct mxc_nand_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mxc_nand_host *host, uint16_t addr, int islast)
{
	/* fill address */
	FUNC1(addr, NFC_V3_FLASH_ADDR0);

	/* send out address */
	FUNC1(NFC_ADDR, NFC_V3_LAUNCH);

	FUNC0(host, 0);
}