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
struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;

/* Variables and functions */
 struct cb710_slot* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct cb710_slot *FUNC3(struct mmc_host *mmc)
{
	struct platform_device *pdev = FUNC2(FUNC1(mmc));
	return FUNC0(pdev);
}