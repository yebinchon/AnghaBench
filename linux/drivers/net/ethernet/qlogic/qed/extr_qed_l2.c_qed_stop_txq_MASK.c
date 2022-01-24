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
typedef  int u8 ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int) ; 
 int FUNC1 (struct qed_hwfn*,void*) ; 

__attribute__((used)) static int FUNC2(struct qed_dev *cdev, u8 rss_id, void *handle)
{
	struct qed_hwfn *p_hwfn;
	int rc, hwfn_index;

	hwfn_index = rss_id % cdev->num_hwfns;
	p_hwfn = &cdev->hwfns[hwfn_index];

	rc = FUNC1(p_hwfn, handle);
	if (rc) {
		FUNC0(cdev, "Failed to stop TXQ#%02x\n", rss_id);
		return rc;
	}

	return 0;
}