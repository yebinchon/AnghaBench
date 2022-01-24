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
typedef  int /*<<< orphan*/  u32 ;
struct qede_dev {int /*<<< orphan*/  cdev; TYPE_2__* ops; } ;
struct qed_link_output {int /*<<< orphan*/  link_up; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  current_link ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_link ) (int /*<<< orphan*/ ,struct qed_link_output*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_link_output*,int /*<<< orphan*/ ,int) ; 
 struct qede_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct qed_link_output*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *dev)
{
	struct qede_dev *edev = FUNC1(dev);
	struct qed_link_output current_link;

	FUNC0(&current_link, 0, sizeof(current_link));
	edev->ops->common->get_link(edev->cdev, &current_link);

	return current_link.link_up;
}