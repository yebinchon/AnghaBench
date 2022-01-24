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
typedef  int /*<<< orphan*/  u32 ;
struct qed_hash_fcoe_con {int /*<<< orphan*/  con; int /*<<< orphan*/  node; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hash_fcoe_con*) ; 
 struct qed_hash_fcoe_con* FUNC4 (struct qed_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev, u32 handle)
{
	struct qed_hash_fcoe_con *hash_con;

	hash_con = FUNC4(cdev, handle);
	if (!hash_con) {
		FUNC0(cdev, "Failed to find connection for handle %d\n",
			  handle);
		return -EINVAL;
	}

	FUNC2(&hash_con->node);
	FUNC5(FUNC1(cdev), hash_con->con);
	FUNC3(hash_con);

	return 0;
}