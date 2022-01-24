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
struct zmii_instance {scalar_t__ users; int /*<<< orphan*/  base; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zmii_instance*) ; 
 struct zmii_instance* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *ofdev)
{
	struct zmii_instance *dev = FUNC3(ofdev);

	FUNC0(dev->users != 0);

	FUNC1(dev->base);
	FUNC2(dev);

	return 0;
}