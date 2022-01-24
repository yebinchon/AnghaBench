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
typedef  int uint32_t ;
struct mxc_nand_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_V3_IPC ; 
 int NFC_V3_IPC_INT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mxc_nand_host *host)
{
	uint32_t tmp;

	tmp = FUNC0(NFC_V3_IPC);
	if (!(tmp & NFC_V3_IPC_INT))
		return 0;

	tmp &= ~NFC_V3_IPC_INT;
	FUNC1(tmp, NFC_V3_IPC);

	return 1;
}