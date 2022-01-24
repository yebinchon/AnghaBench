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
struct mmc_host {int /*<<< orphan*/  ocr_avail; } ;
struct mmc_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *host,
				    struct mmc_card *card)
{
	FUNC3(host);
	FUNC0(host);
	FUNC2(host, host->ocr_avail);
	FUNC1(card);
}