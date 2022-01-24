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
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct gpio_desc *gpio, unsigned int pulse_len,
			     unsigned int startup_delay)
{
	FUNC0(gpio, 1);
	/* Wait for minimum reset pulse length */
	FUNC1(pulse_len);
	FUNC0(gpio, 0);
	/* Wait until chip is ready after reset */
	FUNC1(startup_delay);
}