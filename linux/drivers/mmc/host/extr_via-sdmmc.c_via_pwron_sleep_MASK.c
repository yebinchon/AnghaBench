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
struct via_crdr_mmc_host {int quirks; } ;

/* Variables and functions */
 int VIA_CRDR_QUIRK_300MS_PWRDELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct via_crdr_mmc_host *sdhost)
{
	if (sdhost->quirks & VIA_CRDR_QUIRK_300MS_PWRDELAY)
		FUNC0(300);
	else
		FUNC0(3);
}