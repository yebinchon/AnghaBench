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

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macvtap_cdev ; 
 int /*<<< orphan*/  macvtap_class ; 
 int /*<<< orphan*/  macvtap_link_ops ; 
 int /*<<< orphan*/  macvtap_major ; 
 int /*<<< orphan*/  macvtap_notifier_block ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void)
{
	int err;

	err = FUNC4(&macvtap_cdev, &macvtap_major, "macvtap",
			      THIS_MODULE);
	if (err)
		goto out1;

	err = FUNC0(&macvtap_class);
	if (err)
		goto out2;

	err = FUNC3(&macvtap_notifier_block);
	if (err)
		goto out3;

	err = FUNC2(&macvtap_link_ops);
	if (err)
		goto out4;

	return 0;

out4:
	FUNC6(&macvtap_notifier_block);
out3:
	FUNC1(&macvtap_class);
out2:
	FUNC5(macvtap_major, &macvtap_cdev);
out1:
	return err;
}