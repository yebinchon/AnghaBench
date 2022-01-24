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
struct list_head {int dummy; } ;
struct hl_vm_va_block {scalar_t__ end; scalar_t__ start; scalar_t__ size; struct list_head node; } ;
struct hl_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hl_vm_va_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct hl_vm_va_block* FUNC2 (struct hl_vm_va_block*,int /*<<< orphan*/ ) ; 
 struct hl_vm_va_block* FUNC3 (struct hl_vm_va_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node ; 

__attribute__((used)) static void FUNC4(struct hl_device *hdev,
		struct list_head *va_list, struct hl_vm_va_block *va_block)
{
	struct hl_vm_va_block *prev, *next;

	prev = FUNC3(va_block, node);
	if (&prev->node != va_list && prev->end + 1 == va_block->start) {
		prev->end = va_block->end;
		prev->size = prev->end - prev->start;
		FUNC1(&va_block->node);
		FUNC0(va_block);
		va_block = prev;
	}

	next = FUNC2(va_block, node);
	if (&next->node != va_list && va_block->end + 1 == next->start) {
		next->start = va_block->start;
		next->size = next->end - next->start;
		FUNC1(&va_block->node);
		FUNC0(va_block);
	}
}