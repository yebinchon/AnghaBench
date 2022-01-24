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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct idt_89hpesx_dev*) ; 
 int FUNC1 (struct idt_89hpesx_dev*) ; 
 int FUNC2 (struct idt_89hpesx_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct idt_89hpesx_dev*) ; 
 struct idt_89hpesx_dev* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct idt_89hpesx_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct idt_89hpesx_dev*) ; 
 int FUNC7 (struct idt_89hpesx_dev*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct idt_89hpesx_dev *pdev;
	int ret;

	/* Create driver data */
	pdev = FUNC4(client);
	if (FUNC0(pdev))
		return FUNC1(pdev);

	/* Set SMBus operations */
	ret = FUNC7(pdev);
	if (ret != 0)
		goto err_free_pdev;

	/* Check whether it is truly IDT 89HPESx device */
	ret = FUNC2(pdev);
	if (ret != 0)
		goto err_free_pdev;

	/* Create sysfs files */
	ret = FUNC5(pdev);
	if (ret != 0)
		goto err_free_pdev;

	/* Create debugfs files */
	FUNC3(pdev);

	return 0;

err_free_pdev:
	FUNC6(pdev);

	return ret;
}