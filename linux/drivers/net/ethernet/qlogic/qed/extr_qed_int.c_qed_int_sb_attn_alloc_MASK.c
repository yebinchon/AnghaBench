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
struct qed_sb_attn_info {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {struct qed_sb_attn_info* p_sb_attn; struct qed_dev* cdev; } ;
struct qed_dev {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_sb_attn_info*) ; 
 struct qed_sb_attn_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qed_hwfn *p_hwfn,
				 struct qed_ptt *p_ptt)
{
	struct qed_dev *cdev = p_hwfn->cdev;
	struct qed_sb_attn_info *p_sb;
	dma_addr_t p_phys = 0;
	void *p_virt;

	/* SB struct */
	p_sb = FUNC3(sizeof(*p_sb), GFP_KERNEL);
	if (!p_sb)
		return -ENOMEM;

	/* SB ring  */
	p_virt = FUNC1(&cdev->pdev->dev,
				    FUNC0(p_hwfn),
				    &p_phys, GFP_KERNEL);

	if (!p_virt) {
		FUNC2(p_sb);
		return -ENOMEM;
	}

	/* Attention setup */
	p_hwfn->p_sb_attn = p_sb;
	FUNC4(p_hwfn, p_ptt, p_virt, p_phys);

	return 0;
}