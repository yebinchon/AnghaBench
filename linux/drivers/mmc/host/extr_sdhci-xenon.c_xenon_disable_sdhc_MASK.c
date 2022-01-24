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
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned char) ; 
 int XENON_SLOT_ENABLE_SHIFT ; 
 int /*<<< orphan*/  XENON_SYS_OP_CTRL ; 
 int FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host,
			       unsigned char sdhc_id)
{
	u32 reg;

	reg = FUNC1(host, XENON_SYS_OP_CTRL);
	reg &= ~(FUNC0(sdhc_id) << XENON_SLOT_ENABLE_SHIFT);
	FUNC2(host, reg, XENON_SYS_OP_CTRL);
}