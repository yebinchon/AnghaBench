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
struct platform_device {int dummy; } ;
struct dmi_system_id {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct platform_device*) ; 
 struct platform_device* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(const struct dmi_system_id *id)
{
	struct platform_device *pdev;
	int err;

	pdev = FUNC1("tqmx86", -1);
	if (!pdev)
		return -ENOMEM;

	err = FUNC0(pdev);
	if (err)
		FUNC2(pdev);

	return err;
}