#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_spi_host {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_spi_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_spi_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r1b_timeout ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct mmc_spi_host *host)
{
	/* Try to be very sure any previous command has completed;
	 * wait till not-busy, skip debris from any old commands.
	 */
	FUNC3(host, r1b_timeout);
	FUNC2(host, 10);

	/*
	 * Do a burst with chipselect active-high.  We need to do this to
	 * meet the requirement of 74 clock cycles with both chipselect
	 * and CMD (MOSI) high before CMD0 ... after the card has been
	 * powered up to Vdd(min), and so is ready to take commands.
	 *
	 * Some cards are particularly needy of this (e.g. Viking "SD256")
	 * while most others don't seem to care.
	 *
	 * Note that this is one of the places MMC/SD plays games with the
	 * SPI protocol.  Another is that when chipselect is released while
	 * the card returns BUSY status, the clock must issue several cycles
	 * with chipselect high before the card will stop driving its output.
	 */
	host->spi->mode |= SPI_CS_HIGH;
	if (FUNC4(host->spi) != 0) {
		/* Just warn; most cards work without it. */
		FUNC1(&host->spi->dev,
				"can't change chip-select polarity\n");
		host->spi->mode &= ~SPI_CS_HIGH;
	} else {
		FUNC2(host, 18);

		host->spi->mode &= ~SPI_CS_HIGH;
		if (FUNC4(host->spi) != 0) {
			/* Wot, we can't get the same setup we had before? */
			FUNC0(&host->spi->dev,
					"can't restore chip-select polarity\n");
		}
	}
}