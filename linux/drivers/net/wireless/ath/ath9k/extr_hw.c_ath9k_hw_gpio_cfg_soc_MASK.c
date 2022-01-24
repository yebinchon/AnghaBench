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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int gpio_requested; } ;
struct ath_hw {TYPE_1__ caps; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIOF_IN ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah, u32 gpio, bool out,
				  const char *label)
{
	if (ah->caps.gpio_requested & FUNC0(gpio))
		return;

	/* may be requested by BSP, free anyway */
	FUNC1(gpio);

	if (FUNC2(gpio, out ? GPIOF_OUT_INIT_LOW : GPIOF_IN, label))
		return;

	ah->caps.gpio_requested |= FUNC0(gpio);
}