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
struct mipid02_dev {int /*<<< orphan*/  reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct mipid02_dev *bridge)
{
	FUNC0(bridge->reset_gpio, 0);
	FUNC1(5000, 10000);
	FUNC0(bridge->reset_gpio, 1);
	FUNC1(5000, 10000);
	FUNC0(bridge->reset_gpio, 0);
	FUNC1(5000, 10000);
}