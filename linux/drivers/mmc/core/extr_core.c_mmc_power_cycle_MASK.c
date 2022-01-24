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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ ) ; 

void FUNC3(struct mmc_host *host, u32 ocr)
{
	FUNC1(host);
	/* Wait at least 1 ms according to SD spec */
	FUNC0(1);
	FUNC2(host, ocr);
}