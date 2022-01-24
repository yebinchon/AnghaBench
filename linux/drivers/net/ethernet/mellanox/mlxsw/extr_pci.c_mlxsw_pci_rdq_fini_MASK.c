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
struct mlxsw_pci_queue_elem_info {int dummy; } ;
struct mlxsw_pci_queue {int count; int /*<<< orphan*/  num; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_pci_queue_elem_info* FUNC1 (struct mlxsw_pci_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_pci*,struct mlxsw_pci_queue_elem_info*) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_pci *mlxsw_pci,
			       struct mlxsw_pci_queue *q)
{
	struct mlxsw_pci_queue_elem_info *elem_info;
	int i;

	FUNC0(mlxsw_pci->core, q->num);
	for (i = 0; i < q->count; i++) {
		elem_info = FUNC1(q, i);
		FUNC2(mlxsw_pci, elem_info);
	}
}