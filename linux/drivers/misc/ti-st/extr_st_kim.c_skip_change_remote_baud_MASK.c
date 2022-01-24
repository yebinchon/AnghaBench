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
struct bts_action {long size; scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ACTION_WAIT_EVENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(unsigned char **ptr, long *len)
{
	unsigned char *nxt_action, *cur_action;
	cur_action = *ptr;

	nxt_action = cur_action + sizeof(struct bts_action) +
		((struct bts_action *) cur_action)->size;

	if (((struct bts_action *) nxt_action)->type != ACTION_WAIT_EVENT) {
		FUNC0("invalid action after change remote baud command");
	} else {
		*ptr = *ptr + sizeof(struct bts_action) +
			((struct bts_action *)cur_action)->size;
		*len = *len - (sizeof(struct bts_action) +
				((struct bts_action *)cur_action)->size);
		/* warn user on not commenting these in firmware */
		FUNC1("skipping the wait event of change remote baud");
	}
}