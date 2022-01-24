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
typedef  int u32 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int,int) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, u8 val, int reg)
{
	u32 oldval = FUNC1(host, (reg & ~3));
	u32 byte_shift = FUNC0(reg);
	u32 mask = 0xff << byte_shift;
	u32 newval = (oldval & ~mask) | (val << byte_shift);

	FUNC2(host, newval, reg & ~3);
}