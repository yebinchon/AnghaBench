#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  ocr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *host)
{
	int ret;

	/* Restore power and re-initialize. */
	FUNC0(host);
	FUNC1(host, host->card->ocr);
	ret = FUNC3(host);
	FUNC2(host);

	return ret;
}