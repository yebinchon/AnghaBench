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
struct phy_device {int dummy; } ;
struct at803x_context {void* led_control; void* smart_speed; void* int_enable; void* control1000; void* advertise; void* bmcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT803X_INTR_ENABLE ; 
 int /*<<< orphan*/  AT803X_LED_CONTROL ; 
 int /*<<< orphan*/  AT803X_SMART_SPEED ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 void* FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct phy_device *phydev,
				struct at803x_context *context)
{
	context->bmcr = FUNC0(phydev, MII_BMCR);
	context->advertise = FUNC0(phydev, MII_ADVERTISE);
	context->control1000 = FUNC0(phydev, MII_CTRL1000);
	context->int_enable = FUNC0(phydev, AT803X_INTR_ENABLE);
	context->smart_speed = FUNC0(phydev, AT803X_SMART_SPEED);
	context->led_control = FUNC0(phydev, AT803X_LED_CONTROL);
}