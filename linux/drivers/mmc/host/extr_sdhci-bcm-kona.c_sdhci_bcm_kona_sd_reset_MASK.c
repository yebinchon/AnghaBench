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
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  KONA_SDHOST_CORECTRL ; 
 unsigned int KONA_SDHOST_RESET ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct sdhci_host *host)
{
	unsigned int val;
	unsigned long timeout;

	/* This timeout should be sufficent for core to reset */
	timeout = jiffies + FUNC0(100);

	/* reset the host using the top level reset */
	val = FUNC2(host, KONA_SDHOST_CORECTRL);
	val |= KONA_SDHOST_RESET;
	FUNC3(host, val, KONA_SDHOST_CORECTRL);

	while (!(FUNC2(host, KONA_SDHOST_CORECTRL) & KONA_SDHOST_RESET)) {
		if (FUNC4(timeout)) {
			FUNC1("Error: sd host is stuck in reset!!!\n");
			return -EFAULT;
		}
	}

	/* bring the host out of reset */
	val = FUNC2(host, KONA_SDHOST_CORECTRL);
	val &= ~KONA_SDHOST_RESET;

	/*
	 * Back-to-Back register write needs a delay of 1ms at bootup (min 10uS)
	 * Back-to-Back writes to same register needs delay when SD bus clock
	 * is very low w.r.t AHB clock, mainly during boot-time and during card
	 * insert-removal.
	 */
	FUNC5(1000, 5000);
	FUNC3(host, val, KONA_SDHOST_CORECTRL);

	return 0;
}