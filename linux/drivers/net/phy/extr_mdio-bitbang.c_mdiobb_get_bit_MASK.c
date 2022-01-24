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
struct mdiobb_ops {int (* get_mdio_data ) (struct mdiobb_ctrl*) ;int /*<<< orphan*/  (* set_mdc ) (struct mdiobb_ctrl*,int) ;} ;
struct mdiobb_ctrl {struct mdiobb_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_DELAY ; 
 int /*<<< orphan*/  MDIO_READ_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mdiobb_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdiobb_ctrl*,int) ; 
 int FUNC3 (struct mdiobb_ctrl*) ; 

__attribute__((used)) static int FUNC4(struct mdiobb_ctrl *ctrl)
{
	const struct mdiobb_ops *ops = ctrl->ops;

	FUNC0(MDIO_DELAY);
	ops->set_mdc(ctrl, 1);
	FUNC0(MDIO_READ_DELAY);
	ops->set_mdc(ctrl, 0);

	return ops->get_mdio_data(ctrl);
}