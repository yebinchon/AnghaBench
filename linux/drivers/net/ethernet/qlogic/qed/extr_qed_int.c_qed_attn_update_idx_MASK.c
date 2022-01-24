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
typedef  scalar_t__ u16 ;
struct qed_sb_attn_info {scalar_t__ index; TYPE_1__* sb_attn; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_index; } ;

/* Variables and functions */
 scalar_t__ QED_SB_ATT_IDX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u16 FUNC1(struct qed_hwfn *p_hwfn,
				      struct qed_sb_attn_info *p_sb_desc)
{
	u16 rc = 0, index;

	index = FUNC0(p_sb_desc->sb_attn->sb_index);
	if (p_sb_desc->index != index) {
		p_sb_desc->index	= index;
		rc		      = QED_SB_ATT_IDX;
	}

	return rc;
}