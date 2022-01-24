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
struct niu {int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM8704_USER_DEV3_ADDR ; 
 int /*<<< orphan*/  BCM8704_USER_OPT_DIGITAL_CTRL ; 
 int USER_ODIG_CTRL_GPIOS ; 
 int USER_ODIG_CTRL_GPIOS_SHIFT ; 
 int USER_ODIG_CTRL_RESV2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct niu *np)
{
	int err;


	err = FUNC1(np, np->phy_addr, BCM8704_USER_DEV3_ADDR,
			BCM8704_USER_OPT_DIGITAL_CTRL);
	if (err < 0)
		return err;
	err &= ~USER_ODIG_CTRL_GPIOS;
	err |= (0x3 << USER_ODIG_CTRL_GPIOS_SHIFT);
	err |=  USER_ODIG_CTRL_RESV2;
	err = FUNC2(np, np->phy_addr, BCM8704_USER_DEV3_ADDR,
			 BCM8704_USER_OPT_DIGITAL_CTRL, err);
	if (err)
		return err;

	FUNC0(1000);

	return 0;
}