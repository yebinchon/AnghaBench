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
struct mlxsw_pci_queue_elem_info {char* elem; } ;
struct mlxsw_pci_queue {int /*<<< orphan*/  consumer_counter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_pci_queue*,int) ; 
 int FUNC1 (char*) ; 
 struct mlxsw_pci_queue_elem_info* FUNC2 (struct mlxsw_pci_queue*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static char *FUNC4(struct mlxsw_pci_queue *q)
{
	struct mlxsw_pci_queue_elem_info *elem_info;
	char *elem;
	bool owner_bit;

	elem_info = FUNC2(q);
	elem = elem_info->elem;
	owner_bit = FUNC1(elem);
	if (FUNC0(q, owner_bit))
		return NULL;
	q->consumer_counter++;
	FUNC3(); /* make sure we read owned bit before the rest of elem */
	return elem;
}