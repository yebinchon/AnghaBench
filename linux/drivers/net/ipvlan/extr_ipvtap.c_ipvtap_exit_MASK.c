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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipvtap_cdev ; 
 int /*<<< orphan*/  ipvtap_class ; 
 int /*<<< orphan*/  ipvtap_link_ops ; 
 int /*<<< orphan*/  ipvtap_major ; 
 int /*<<< orphan*/  ipvtap_notifier_block ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC1(&ipvtap_link_ops);
	FUNC3(&ipvtap_notifier_block);
	FUNC0(&ipvtap_class);
	FUNC2(ipvtap_major, &ipvtap_cdev);
}