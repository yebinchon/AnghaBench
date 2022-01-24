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
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*) ; 

int FUNC3(struct sdhci_host *host)
{
	int ret;

	ret = FUNC2(host);
	if (ret)
		return ret;

	ret = FUNC0(host);
	if (ret)
		goto cleanup;

	return 0;

cleanup:
	FUNC1(host);

	return ret;
}