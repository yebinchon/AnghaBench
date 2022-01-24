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
struct mxc_nand_host {int active_cs; int /*<<< orphan*/  main_area0; int /*<<< orphan*/  data_buf; } ;

/* Variables and functions */
 int NFC_ID ; 
 int /*<<< orphan*/  NFC_V1_V2_BUF_ADDR ; 
 int /*<<< orphan*/  NFC_V1_V2_CONFIG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mxc_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mxc_nand_host *host)
{
	/* NANDFC buffer 0 is used for device ID output */
	FUNC2(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);

	FUNC2(NFC_ID, NFC_V1_V2_CONFIG2);

	/* Wait for operation to complete */
	FUNC1(host, true);

	FUNC0(host->data_buf, host->main_area0, 16);
}