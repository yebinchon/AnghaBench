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
struct tlan_list {TYPE_1__* buffer; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  c_stat; int /*<<< orphan*/  forward; } ;
struct TYPE_2__ {int /*<<< orphan*/  address; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(struct tlan_list *list, char *type, int num)
{
	int i;

	FUNC0("%s List %d at %p\n", type, num, list);
	FUNC0("   Forward    = 0x%08x\n",  list->forward);
	FUNC0("   CSTAT      = 0x%04hx\n", list->c_stat);
	FUNC0("   Frame Size = 0x%04hx\n", list->frame_size);
	/* for (i = 0; i < 10; i++) { */
	for (i = 0; i < 2; i++) {
		FUNC0("   Buffer[%d].count, addr = 0x%08x, 0x%08x\n",
			i, list->buffer[i].count, list->buffer[i].address);
	}

}