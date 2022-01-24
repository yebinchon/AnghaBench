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
struct ksz_device {int /*<<< orphan*/ * regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SW_VLAN_CTRL ; 
 unsigned int VLAN_START ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 

__attribute__((used)) static int FUNC1(struct ksz_device *dev)
{
	unsigned int val;

	return FUNC0(dev->regmap[0], REG_SW_VLAN_CTRL,
					val, !(val & VLAN_START), 10, 1000);
}