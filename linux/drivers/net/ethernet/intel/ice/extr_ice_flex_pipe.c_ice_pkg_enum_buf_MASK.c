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
struct ice_seg {int dummy; } ;
struct ice_pkg_enum {scalar_t__ buf_idx; TYPE_1__* buf_table; } ;
struct ice_buf_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf_array; int /*<<< orphan*/  buf_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ice_seg*) ; 
 struct ice_buf_hdr* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ice_buf_hdr *
FUNC3(struct ice_seg *ice_seg, struct ice_pkg_enum *state)
{
	if (ice_seg) {
		state->buf_table = FUNC0(ice_seg);
		if (!state->buf_table)
			return NULL;

		state->buf_idx = 0;
		return FUNC1(state->buf_table->buf_array);
	}

	if (++state->buf_idx < FUNC2(state->buf_table->buf_count))
		return FUNC1(state->buf_table->buf_array +
				       state->buf_idx);
	else
		return NULL;
}