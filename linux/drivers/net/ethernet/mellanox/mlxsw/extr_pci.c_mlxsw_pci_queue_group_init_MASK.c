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
typedef  int u8 ;
struct mlxsw_pci_queue_type_group {int count; int /*<<< orphan*/ * q; } ;
struct mlxsw_pci_queue_ops {int /*<<< orphan*/  type; } ;
struct mlxsw_pci {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_pci*,struct mlxsw_pci_queue_ops const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlxsw_pci*,char*,struct mlxsw_pci_queue_ops const*,int /*<<< orphan*/ *,int) ; 
 struct mlxsw_pci_queue_type_group* FUNC4 (struct mlxsw_pci*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_pci *mlxsw_pci, char *mbox,
				      const struct mlxsw_pci_queue_ops *q_ops,
				      u8 num_qs)
{
	struct mlxsw_pci_queue_type_group *queue_group;
	int i;
	int err;

	queue_group = FUNC4(mlxsw_pci, q_ops->type);
	queue_group->q = FUNC0(num_qs, sizeof(*queue_group->q), GFP_KERNEL);
	if (!queue_group->q)
		return -ENOMEM;

	for (i = 0; i < num_qs; i++) {
		err = FUNC3(mlxsw_pci, mbox, q_ops,
					   &queue_group->q[i], i);
		if (err)
			goto err_queue_init;
	}
	queue_group->count = num_qs;

	return 0;

err_queue_init:
	for (i--; i >= 0; i--)
		FUNC2(mlxsw_pci, q_ops, &queue_group->q[i]);
	FUNC1(queue_group->q);
	return err;
}