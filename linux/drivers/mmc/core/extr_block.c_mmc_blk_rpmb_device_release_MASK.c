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
struct mmc_rpmb_data {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mmc_rpmb_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_rpmb_data*) ; 
 int /*<<< orphan*/  mmc_rpmb_ida ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct mmc_rpmb_data *rpmb = FUNC0(dev);

	FUNC1(&mmc_rpmb_ida, rpmb->id);
	FUNC2(rpmb);
}