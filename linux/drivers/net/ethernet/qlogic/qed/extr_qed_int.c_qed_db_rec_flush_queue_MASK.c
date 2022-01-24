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
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DORQ_REG_DPM_FORCE_ABORT ; 
 int /*<<< orphan*/  DORQ_REG_PF_USAGE_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int EBUSY ; 
 int QED_DB_REC_COUNT ; 
 int QED_DB_REC_INTERVAL ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct qed_hwfn *p_hwfn,
				  struct qed_ptt *p_ptt)
{
	u32 count = QED_DB_REC_COUNT;
	u32 usage = 1;

	/* Flush any pending (e)dpms as they may never arrive */
	FUNC2(p_hwfn, p_ptt, DORQ_REG_DPM_FORCE_ABORT, 0x1);

	/* wait for usage to zero or count to run out. This is necessary since
	 * EDPM doorbell transactions can take multiple 64b cycles, and as such
	 * can "split" over the pci. Possibly, the doorbell drop can happen with
	 * half an EDPM in the queue and other half dropped. Another EDPM
	 * doorbell to the same address (from doorbell recovery mechanism or
	 * from the doorbelling entity) could have first half dropped and second
	 * half interpreted as continuation of the first. To prevent such
	 * malformed doorbells from reaching the device, flush the queue before
	 * releasing the overflow sticky indication.
	 */
	while (count-- && usage) {
		usage = FUNC1(p_hwfn, p_ptt, DORQ_REG_PF_USAGE_CNT);
		FUNC3(QED_DB_REC_INTERVAL);
	}

	/* should have been depleted by now */
	if (usage) {
		FUNC0(p_hwfn->cdev,
			  "DB recovery: doorbell usage failed to zero after %d usec. usage was %x\n",
			  QED_DB_REC_INTERVAL * QED_DB_REC_COUNT, usage);
		return -EBUSY;
	}

	return 0;
}