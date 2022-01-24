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
struct mv88e6xxx_chip {int /*<<< orphan*/  policies; int /*<<< orphan*/  mdios; int /*<<< orphan*/  reg_lock; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mv88e6xxx_chip* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mv88e6xxx_chip *FUNC4(struct device *dev)
{
	struct mv88e6xxx_chip *chip;

	chip = FUNC1(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return NULL;

	chip->dev = dev;

	FUNC3(&chip->reg_lock);
	FUNC0(&chip->mdios);
	FUNC2(&chip->policies);

	return chip;
}