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
struct idt_89hpesx_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct idt_89hpesx_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_89hpesx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct idt_89hpesx_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct idt_89hpesx_dev*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct idt_89hpesx_dev *pdev = FUNC0(client);

	/* Remove debugfs files first */
	FUNC2(pdev);

	/* Remove sysfs files */
	FUNC3(pdev);

	/* Discard driver data structure */
	FUNC1(pdev);

	return 0;
}