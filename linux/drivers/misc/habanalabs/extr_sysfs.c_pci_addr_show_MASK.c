#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hl_device {TYPE_1__* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int /*<<< orphan*/  devfn; TYPE_2__* bus; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct hl_device* FUNC2 (struct device*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
				char *buf)
{
	struct hl_device *hdev = FUNC2(dev);

	return FUNC4(buf, "%04x:%02x:%02x.%x\n",
			FUNC3(hdev->pdev->bus),
			hdev->pdev->bus->number,
			FUNC1(hdev->pdev->devfn),
			FUNC0(hdev->pdev->devfn));
}