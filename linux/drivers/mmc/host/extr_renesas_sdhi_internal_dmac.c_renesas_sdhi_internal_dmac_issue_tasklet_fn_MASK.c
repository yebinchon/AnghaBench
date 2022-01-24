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
struct tmio_mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CM_DTRAN_CTRL ; 
 int /*<<< orphan*/  DTRAN_CTRL_DM_START ; 
 int /*<<< orphan*/  TMIO_STAT_DATAEND ; 
 int /*<<< orphan*/  FUNC0 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned long arg)
{
	struct tmio_mmc_host *host = (struct tmio_mmc_host *)arg;

	FUNC1(host, TMIO_STAT_DATAEND);

	/* start the DMAC */
	FUNC0(host, DM_CM_DTRAN_CTRL,
					    DTRAN_CTRL_DM_START);
}