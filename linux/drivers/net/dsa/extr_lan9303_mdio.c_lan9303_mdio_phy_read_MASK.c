#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lan9303_mdio {TYPE_1__* device; } ;
struct lan9303 {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 struct lan9303_mdio* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct lan9303 *chip, int phy,  int reg)
{
	struct lan9303_mdio *sw_dev = FUNC0(chip->dev);

	return FUNC1(sw_dev->device->bus, phy, reg);
}