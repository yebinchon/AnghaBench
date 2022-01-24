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
struct mxc_nand_host {int /*<<< orphan*/  main_area0; int /*<<< orphan*/  data_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_ID ; 
 int /*<<< orphan*/  NFC_V3_LAUNCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mxc_nand_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mxc_nand_host *host)
{
	/* Read ID into main buffer */
	FUNC2(NFC_ID, NFC_V3_LAUNCH);

	FUNC1(host, true);

	FUNC0(host->data_buf, host->main_area0, 16);
}