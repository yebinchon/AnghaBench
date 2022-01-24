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
typedef  scalar_t__ u8 ;
struct qed_ooo_info {int /*<<< orphan*/  ready_buffers_list; } ;
struct qed_ooo_buffer {int /*<<< orphan*/  list_entry; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct qed_hwfn *p_hwfn,
			      struct qed_ooo_info *p_ooo_info,
			      struct qed_ooo_buffer *p_buffer, u8 on_tail)
{
	if (on_tail)
		FUNC1(&p_buffer->list_entry,
			      &p_ooo_info->ready_buffers_list);
	else
		FUNC0(&p_buffer->list_entry,
			 &p_ooo_info->ready_buffers_list);
}