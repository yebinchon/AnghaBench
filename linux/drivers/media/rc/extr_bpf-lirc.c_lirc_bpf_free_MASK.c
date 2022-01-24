#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rc_dev {TYPE_1__* raw; } ;
struct bpf_prog_array_item {scalar_t__ prog; } ;
struct bpf_prog_array {struct bpf_prog_array_item* items; } ;
struct TYPE_2__ {int /*<<< orphan*/  progs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog_array*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct bpf_prog_array* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct rc_dev *rcdev)
{
	struct bpf_prog_array_item *item;
	struct bpf_prog_array *array;

	array = FUNC2(rcdev->raw->progs);
	if (!array)
		return;

	for (item = array->items; item->prog; item++)
		FUNC1(item->prog);

	FUNC0(array);
}