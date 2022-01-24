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
struct mei_cl_device {struct mei_cl_device* cl; int /*<<< orphan*/  bus; int /*<<< orphan*/  me_cl; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mei_cl_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct mei_cl_device *cldev = FUNC4(dev);

	if (!cldev)
		return;

	FUNC3(cldev->me_cl);
	FUNC2(cldev->bus);
	FUNC1(cldev->cl);
	FUNC0(cldev->cl);
	FUNC0(cldev);
}