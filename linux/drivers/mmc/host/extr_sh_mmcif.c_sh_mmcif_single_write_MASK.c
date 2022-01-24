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
struct sh_mmcif_host {int blocksize; int /*<<< orphan*/  wait_for; int /*<<< orphan*/  addr; } ;
struct mmc_request {int dummy; } ;

/* Variables and functions */
 int BLOCK_SIZE_MASK ; 
 int /*<<< orphan*/  MASK_MBUFWEN ; 
 int /*<<< orphan*/  MMCIF_CE_BLOCK_SET ; 
 int /*<<< orphan*/  MMCIF_CE_INT_MASK ; 
 int /*<<< orphan*/  MMCIF_WAIT_FOR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mmcif_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sh_mmcif_host *host,
					struct mmc_request *mrq)
{
	host->blocksize = (FUNC1(host->addr, MMCIF_CE_BLOCK_SET) &
			   BLOCK_SIZE_MASK) + 3;

	host->wait_for = MMCIF_WAIT_FOR_WRITE;

	/* buf write enable */
	FUNC0(host, MMCIF_CE_INT_MASK, MASK_MBUFWEN);
}