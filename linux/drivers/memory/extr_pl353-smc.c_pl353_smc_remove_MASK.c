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
struct pl353_smc_data {int /*<<< orphan*/  aclk; int /*<<< orphan*/  memclk; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 struct pl353_smc_data* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct amba_device *adev)
{
	struct pl353_smc_data *pl353_smc = FUNC0(adev);

	FUNC1(pl353_smc->memclk);
	FUNC1(pl353_smc->aclk);

	return 0;
}