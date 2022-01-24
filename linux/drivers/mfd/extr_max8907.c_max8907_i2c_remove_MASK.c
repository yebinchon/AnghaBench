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
struct max8907 {int /*<<< orphan*/  i2c_rtc; int /*<<< orphan*/  irqc_chg; TYPE_1__* i2c_gen; int /*<<< orphan*/  irqc_on_off; int /*<<< orphan*/  irqc_rtc; int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct max8907* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c)
{
	struct max8907 *max8907 = FUNC0(i2c);

	FUNC2(max8907->dev);

	FUNC3(max8907->i2c_gen->irq, max8907->irqc_rtc);
	FUNC3(max8907->i2c_gen->irq, max8907->irqc_on_off);
	FUNC3(max8907->i2c_gen->irq, max8907->irqc_chg);

	FUNC1(max8907->i2c_rtc);

	return 0;
}