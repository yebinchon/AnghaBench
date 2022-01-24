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
struct smsc9420_pdata {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_MODE ; 
 int BUS_MODE_SWR_ ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct smsc9420_pdata *pd)
{
	FUNC2(pd, BUS_MODE, BUS_MODE_SWR_);
	FUNC1(pd, BUS_MODE);
	FUNC3(2);
	if (FUNC1(pd, BUS_MODE) & BUS_MODE_SWR_)
		FUNC0(pd, drv, pd->dev, "Software reset not cleared\n");
}