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
 int TMIO_STAT_CMDRESPEND ; 
 int TMIO_STAT_CMDTIMEOUT ; 
 int TMIO_STAT_DATAEND ; 
 int TMIO_STAT_RXRDY ; 
 int TMIO_STAT_TXRQ ; 
 int /*<<< orphan*/  FUNC0 (struct tmio_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*) ; 

__attribute__((used)) static bool FUNC4(struct tmio_mmc_host *host, int ireg,
				  int status)
{
	/* Command completion */
	if (ireg & (TMIO_STAT_CMDRESPEND | TMIO_STAT_CMDTIMEOUT)) {
		FUNC0(host, TMIO_STAT_CMDRESPEND |
				      TMIO_STAT_CMDTIMEOUT);
		FUNC1(host, status);
		return true;
	}

	/* Data transfer */
	if (ireg & (TMIO_STAT_RXRDY | TMIO_STAT_TXRQ)) {
		FUNC0(host, TMIO_STAT_RXRDY | TMIO_STAT_TXRQ);
		FUNC3(host);
		return true;
	}

	/* Data transfer completion */
	if (ireg & TMIO_STAT_DATAEND) {
		FUNC0(host, TMIO_STAT_DATAEND);
		FUNC2(host, status);
		return true;
	}

	return false;
}