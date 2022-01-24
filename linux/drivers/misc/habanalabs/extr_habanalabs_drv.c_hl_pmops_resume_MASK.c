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
struct hl_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct hl_device* FUNC0 (struct device*) ; 
 int FUNC1 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct hl_device *hdev = FUNC0(dev);

	FUNC2("Going to resume PCI device\n");

	if (!hdev) {
		FUNC3("device pointer is NULL in resume\n");
		return 0;
	}

	return FUNC1(hdev);
}