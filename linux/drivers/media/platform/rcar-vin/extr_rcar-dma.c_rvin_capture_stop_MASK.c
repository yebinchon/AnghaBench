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
struct rvin_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VNFC_REG ; 
 int VNMC_ME ; 
 int /*<<< orphan*/  VNMC_REG ; 
 int FUNC0 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rvin_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rvin_dev *vin)
{
	/* Set continuous & single transfer off */
	FUNC1(vin, 0, VNFC_REG);

	/* Disable module */
	FUNC1(vin, FUNC0(vin, VNMC_REG) & ~VNMC_ME, VNMC_REG);
}