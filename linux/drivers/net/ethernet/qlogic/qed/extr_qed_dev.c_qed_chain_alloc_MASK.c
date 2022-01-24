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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qed_dev {int dummy; } ;
struct qed_chain_ext_pbl {int dummy; } ;
struct qed_chain {int dummy; } ;
typedef  enum qed_chain_use_mode { ____Placeholder_qed_chain_use_mode } qed_chain_use_mode ;
typedef  enum qed_chain_mode { ____Placeholder_qed_chain_mode } qed_chain_mode ;
typedef  enum qed_chain_cnt_type { ____Placeholder_qed_chain_cnt_type } qed_chain_cnt_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,...) ; 
#define  QED_CHAIN_MODE_NEXT_PTR 130 
#define  QED_CHAIN_MODE_PBL 129 
#define  QED_CHAIN_MODE_SINGLE 128 
 int FUNC1 (int,size_t,int) ; 
 int FUNC2 (struct qed_dev*,struct qed_chain*) ; 
 int FUNC3 (struct qed_dev*,struct qed_chain*,struct qed_chain_ext_pbl*) ; 
 int FUNC4 (struct qed_dev*,int,size_t,int) ; 
 int FUNC5 (struct qed_dev*,struct qed_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_dev*,struct qed_chain*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_chain*,int,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC8(struct qed_dev *cdev,
		    enum qed_chain_use_mode intended_use,
		    enum qed_chain_mode mode,
		    enum qed_chain_cnt_type cnt_type,
		    u32 num_elems,
		    size_t elem_size,
		    struct qed_chain *p_chain,
		    struct qed_chain_ext_pbl *ext_pbl)
{
	u32 page_cnt;
	int rc = 0;

	if (mode == QED_CHAIN_MODE_SINGLE)
		page_cnt = 1;
	else
		page_cnt = FUNC1(num_elems, elem_size, mode);

	rc = FUNC4(cdev, cnt_type, elem_size, page_cnt);
	if (rc) {
		FUNC0(cdev,
			  "Cannot allocate a chain with the given arguments:\n");
		FUNC0(cdev,
			  "[use_mode %d, mode %d, cnt_type %d, num_elems %d, elem_size %zu]\n",
			  intended_use, mode, cnt_type, num_elems, elem_size);
		return rc;
	}

	FUNC7(p_chain, page_cnt, (u8) elem_size, intended_use,
			      mode, cnt_type);

	switch (mode) {
	case QED_CHAIN_MODE_NEXT_PTR:
		rc = FUNC2(cdev, p_chain);
		break;
	case QED_CHAIN_MODE_SINGLE:
		rc = FUNC5(cdev, p_chain);
		break;
	case QED_CHAIN_MODE_PBL:
		rc = FUNC3(cdev, p_chain, ext_pbl);
		break;
	}
	if (rc)
		goto nomem;

	return 0;

nomem:
	FUNC6(cdev, p_chain);
	return rc;
}