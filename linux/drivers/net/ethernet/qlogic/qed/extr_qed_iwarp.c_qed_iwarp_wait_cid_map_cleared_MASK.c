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
struct qed_hwfn {int dummy; } ;
struct qed_bmap {int /*<<< orphan*/  name; int /*<<< orphan*/  max_count; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  QED_IWARP_MAX_CID_CLEAN_TIME ; 
 int QED_IWARP_MAX_NO_PROGRESS_CNT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct qed_hwfn *p_hwfn, struct qed_bmap *bmap)
{
	int prev_weight = 0;
	int wait_count = 0;
	int weight = 0;

	weight = FUNC1(bmap->bitmap, bmap->max_count);
	prev_weight = weight;

	while (weight) {
		FUNC2(QED_IWARP_MAX_CID_CLEAN_TIME);

		weight = FUNC1(bmap->bitmap, bmap->max_count);

		if (prev_weight == weight) {
			wait_count++;
		} else {
			prev_weight = weight;
			wait_count = 0;
		}

		if (wait_count > QED_IWARP_MAX_NO_PROGRESS_CNT) {
			FUNC0(p_hwfn,
				  "%s bitmap wait timed out (%d cids pending)\n",
				  bmap->name, weight);
			return -EBUSY;
		}
	}
	return 0;
}