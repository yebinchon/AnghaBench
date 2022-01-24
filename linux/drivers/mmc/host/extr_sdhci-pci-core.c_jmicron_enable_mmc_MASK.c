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
typedef  int u8 ;
struct sdhci_host {scalar_t__ ioaddr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host, int on)
{
	u8 scratch;

	scratch = FUNC0(host->ioaddr + 0xC0);

	if (on)
		scratch |= 0x01;
	else
		scratch &= ~0x01;

	FUNC1(scratch, host->ioaddr + 0xC0);
}