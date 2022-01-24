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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qed_hash_iscsi_con {TYPE_1__* con; } ;
struct qed_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  abortive_dsconnect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 struct qed_hash_iscsi_con* FUNC2 (struct qed_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev,
				  u32 handle, u8 abrt_conn)
{
	struct qed_hash_iscsi_con *hash_con;

	hash_con = FUNC2(cdev, handle);
	if (!hash_con) {
		FUNC0(cdev, "Failed to find connection for handle %d\n",
			  handle);
		return -EINVAL;
	}

	hash_con->con->abortive_dsconnect = abrt_conn;

	return FUNC3(FUNC1(cdev), hash_con->con,
					   QED_SPQ_MODE_EBLOCK, NULL);
}