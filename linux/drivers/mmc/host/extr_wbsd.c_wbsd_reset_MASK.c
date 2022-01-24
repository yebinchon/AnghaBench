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
typedef  int /*<<< orphan*/  u8 ;
struct wbsd_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  WBSD_IDX_SETUP ; 
 int /*<<< orphan*/  WBSD_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wbsd_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wbsd_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wbsd_host *host)
{
	u8 setup;

	FUNC1("%s: Resetting chip\n", FUNC0(host->mmc));

	/*
	 * Soft reset of chip (SD/MMC part).
	 */
	setup = FUNC2(host, WBSD_IDX_SETUP);
	setup |= WBSD_SOFT_RESET;
	FUNC3(host, WBSD_IDX_SETUP, setup);
}