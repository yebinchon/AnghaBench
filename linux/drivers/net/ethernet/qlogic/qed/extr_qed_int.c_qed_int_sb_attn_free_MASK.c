#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qed_sb_attn_info {int /*<<< orphan*/  sb_phys; scalar_t__ sb_attn; } ;
struct qed_hwfn {struct qed_sb_attn_info* p_sb_attn; TYPE_2__* cdev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_sb_attn_info*) ; 

__attribute__((used)) static void FUNC3(struct qed_hwfn *p_hwfn)
{
	struct qed_sb_attn_info *p_sb = p_hwfn->p_sb_attn;

	if (!p_sb)
		return;

	if (p_sb->sb_attn)
		FUNC1(&p_hwfn->cdev->pdev->dev,
				  FUNC0(p_hwfn),
				  p_sb->sb_attn, p_sb->sb_phys);
	FUNC2(p_sb);
	p_hwfn->p_sb_attn = NULL;
}