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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, u16 val, int reg)
{
	u32 req_type = 0;

	req_type = FUNC0(host, val, reg);
	FUNC2(val, host->ioaddr + reg);

	if (req_type)
		FUNC1(host, req_type);
}