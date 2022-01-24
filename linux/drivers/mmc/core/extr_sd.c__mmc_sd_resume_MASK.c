#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  ocr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int FUNC5 (struct mmc_host*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct mmc_host *host)
{
	int err = 0;

	FUNC2(host);

	if (!FUNC1(host->card))
		goto out;

	FUNC3(host, host->card->ocr);
	err = FUNC5(host, host->card->ocr, host->card);
	FUNC0(host->card);

out:
	FUNC4(host);
	return err;
}