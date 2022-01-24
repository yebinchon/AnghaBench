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
struct qed_ptt {int dummy; } ;
struct qed_dev {int flags; int /*<<< orphan*/  connections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int QED_FLAG_STORAGE_STARTED ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct qed_ptt* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct qed_ptt*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev)
{
	struct qed_ptt *p_ptt;
	int rc;

	if (!(cdev->flags & QED_FLAG_STORAGE_STARTED)) {
		FUNC0(cdev, "fcoe already stopped\n");
		return 0;
	}

	if (!FUNC2(cdev->connections)) {
		FUNC0(cdev,
			  "Can't stop fcoe - not all connections were returned\n");
		return -EINVAL;
	}

	p_ptt = FUNC3(FUNC1(cdev));
	if (!p_ptt)
		return -EAGAIN;

	/* Stop the fcoe */
	rc = FUNC5(FUNC1(cdev), p_ptt,
				   QED_SPQ_MODE_EBLOCK, NULL);
	cdev->flags &= ~QED_FLAG_STORAGE_STARTED;
	FUNC4(FUNC1(cdev), p_ptt);

	return rc;
}