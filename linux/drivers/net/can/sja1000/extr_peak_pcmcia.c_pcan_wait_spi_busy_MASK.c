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
struct pcan_pccard {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  PCC_CSR ; 
 int PCC_CSR_SPI_BUSY ; 
 int /*<<< orphan*/  PCC_SPI_MAX_BUSY_WAIT_MS ; 
 int jiffies ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pcan_pccard*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct pcan_pccard *card)
{
	unsigned long timeout = jiffies +
				FUNC0(PCC_SPI_MAX_BUSY_WAIT_MS) + 1;

	/* be sure to read status at least once after sleeping */
	while (FUNC1(card, PCC_CSR) & PCC_CSR_SPI_BUSY) {
		if (FUNC3(jiffies, timeout))
			return -EBUSY;
		FUNC2();
	}

	return 0;
}