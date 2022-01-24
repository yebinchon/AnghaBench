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
struct qede_fastpath {int dummy; } ;
struct qede_dev {struct qede_fastpath* fp_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,int) ; 
 int FUNC1 (struct qede_dev*) ; 
 int FUNC2 (struct qede_dev*,struct qede_fastpath*) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 

__attribute__((used)) static int FUNC4(struct qede_dev *edev)
{
	int rc = 0, queue_id;

	for (queue_id = 0; queue_id < FUNC1(edev); queue_id++) {
		struct qede_fastpath *fp = &edev->fp_array[queue_id];

		rc = FUNC2(edev, fp);
		if (rc) {
			FUNC0(edev,
			       "Failed to allocate memory for fastpath - rss id = %d\n",
			       queue_id);
			FUNC3(edev);
			return rc;
		}
	}

	return 0;
}