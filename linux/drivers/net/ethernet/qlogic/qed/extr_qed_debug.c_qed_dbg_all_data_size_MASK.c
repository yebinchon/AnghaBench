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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {size_t engine_for_debug; } ;
struct qed_dev {scalar_t__ num_hwfns; TYPE_1__ dbg_params; struct qed_hwfn* hwfns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
 int /*<<< orphan*/  QED_NVM_IMAGE_DEFAULT_CFG ; 
 int /*<<< orphan*/  QED_NVM_IMAGE_NVM_CFG1 ; 
 int /*<<< orphan*/  QED_NVM_IMAGE_NVM_META ; 
 int REGDUMP_HEADER_SIZE ; 
 int FUNC1 (struct qed_dev*) ; 
 int FUNC2 (struct qed_dev*) ; 
 int FUNC3 (struct qed_dev*) ; 
 int FUNC4 (struct qed_dev*) ; 
 int FUNC5 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct qed_dev*) ; 
 int FUNC8 (struct qed_dev*) ; 
 scalar_t__ FUNC9 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_dev*,scalar_t__) ; 

int FUNC11(struct qed_dev *cdev)
{
	struct qed_hwfn *p_hwfn =
		&cdev->hwfns[cdev->dbg_params.engine_for_debug];
	u32 regs_len = 0, image_len = 0;
	u8 cur_engine, org_engine;

	org_engine = FUNC9(cdev);
	for (cur_engine = 0; cur_engine < cdev->num_hwfns; cur_engine++) {
		/* Engine specific */
		FUNC0(cdev, QED_MSG_DEBUG,
			   "calculating idle_chk and grcdump register length for current engine\n");
		FUNC10(cdev, cur_engine);
		regs_len += REGDUMP_HEADER_SIZE + FUNC3(cdev) +
			    REGDUMP_HEADER_SIZE + FUNC3(cdev) +
			    REGDUMP_HEADER_SIZE + FUNC2(cdev) +
			    REGDUMP_HEADER_SIZE + FUNC8(cdev) +
			    REGDUMP_HEADER_SIZE + FUNC4(cdev) +
			    REGDUMP_HEADER_SIZE +
			    FUNC7(cdev) +
			    REGDUMP_HEADER_SIZE + FUNC1(cdev);
	}

	FUNC10(cdev, org_engine);

	/* Engine common */
	regs_len += REGDUMP_HEADER_SIZE + FUNC5(cdev);
	FUNC6(p_hwfn, QED_NVM_IMAGE_NVM_CFG1, &image_len);
	if (image_len)
		regs_len += REGDUMP_HEADER_SIZE + image_len;
	FUNC6(p_hwfn, QED_NVM_IMAGE_DEFAULT_CFG, &image_len);
	if (image_len)
		regs_len += REGDUMP_HEADER_SIZE + image_len;
	FUNC6(p_hwfn, QED_NVM_IMAGE_NVM_META, &image_len);
	if (image_len)
		regs_len += REGDUMP_HEADER_SIZE + image_len;

	return regs_len;
}