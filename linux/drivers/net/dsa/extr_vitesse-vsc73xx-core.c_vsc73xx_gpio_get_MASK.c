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
typedef  int u32 ;
struct vsc73xx {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  VSC73XX_BLOCK_SYSTEM ; 
 int /*<<< orphan*/  VSC73XX_GPIO ; 
 struct vsc73xx* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct vsc73xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct vsc73xx *vsc = FUNC1(chip);
	u32 val;
	int ret;

	ret = FUNC2(vsc, VSC73XX_BLOCK_SYSTEM, 0,
			   VSC73XX_GPIO, &val);
	if (ret)
		return ret;

	return !!(val & FUNC0(offset));
}