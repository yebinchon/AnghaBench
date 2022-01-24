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
struct max14577 {scalar_t__ dev_type; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAXIM_DEVICE_TYPE_MAX77836 ; 
 struct max14577* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct max14577*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c)
{
	struct max14577 *max14577 = FUNC0(i2c);

	FUNC2(max14577->dev);
	FUNC3(max14577->irq, max14577->irq_data);
	if (max14577->dev_type == MAXIM_DEVICE_TYPE_MAX77836)
		FUNC1(max14577);

	return 0;
}