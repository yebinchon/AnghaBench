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

__attribute__((used)) static u8 FUNC2(struct sdhci_host *host, int reg)
{
	u32 val = FUNC1(host, (reg & ~3));
	u8 byte = val >> FUNC0(reg) & 0xff;
	return byte;
}