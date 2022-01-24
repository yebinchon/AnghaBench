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
struct mmc_host {int /*<<< orphan*/  index; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mmc_host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  mmc_host_ida ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct mmc_host *host = FUNC0(dev);
	FUNC1(&mmc_host_ida, host->index);
	FUNC2(host);
}