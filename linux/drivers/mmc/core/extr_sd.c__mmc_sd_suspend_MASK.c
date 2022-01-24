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
struct mmc_host {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC7(struct mmc_host *host)
{
	int err = 0;

	FUNC2(host);

	if (FUNC1(host->card))
		goto out;

	if (!FUNC4(host))
		err = FUNC3(host);

	if (!err) {
		FUNC5(host);
		FUNC0(host->card);
	}

out:
	FUNC6(host);
	return err;
}