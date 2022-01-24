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
struct camss {unsigned int vfe_num; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  notifier; int /*<<< orphan*/ * vfe; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct camss*) ; 
 int /*<<< orphan*/  FUNC2 (struct camss*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct camss* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	unsigned int i;

	struct camss *camss = FUNC4(pdev);

	for (i = 0; i < camss->vfe_num; i++)
		FUNC3(&camss->vfe[i]);

	FUNC6(&camss->notifier);
	FUNC5(&camss->notifier);
	FUNC2(camss);

	if (FUNC0(&camss->ref_count) == 0)
		FUNC1(camss);

	return 0;
}