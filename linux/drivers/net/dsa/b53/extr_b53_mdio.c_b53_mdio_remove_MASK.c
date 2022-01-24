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
struct mdio_device {int /*<<< orphan*/  dev; } ;
struct dsa_switch {int dummy; } ;
struct b53_device {struct dsa_switch* ds; } ;

/* Variables and functions */
 struct b53_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*) ; 

__attribute__((used)) static void FUNC2(struct mdio_device *mdiodev)
{
	struct b53_device *dev = FUNC0(&mdiodev->dev);
	struct dsa_switch *ds = dev->ds;

	FUNC1(ds);
}