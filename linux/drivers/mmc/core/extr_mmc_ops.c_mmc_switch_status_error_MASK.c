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
typedef  int u32 ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int R1_SPI_ILLEGAL_COMMAND ; 
 scalar_t__ FUNC0 (int) ; 
 int R1_SWITCH_ERROR ; 
 scalar_t__ FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *host, u32 status)
{
	if (FUNC1(host)) {
		if (status & R1_SPI_ILLEGAL_COMMAND)
			return -EBADMSG;
	} else {
		if (FUNC0(status))
			FUNC3("%s: unexpected status %#x after switch\n",
				FUNC2(host), status);
		if (status & R1_SWITCH_ERROR)
			return -EBADMSG;
	}
	return 0;
}