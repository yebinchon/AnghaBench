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
struct qed_tid_mem {int /*<<< orphan*/  blocks; int /*<<< orphan*/  num_tids_per_block; int /*<<< orphan*/  tid_size; } ;
struct qed_iscsi_tid {int /*<<< orphan*/  blocks; int /*<<< orphan*/  num_tids_per_block; int /*<<< orphan*/  size; } ;
struct qed_dev {int flags; int /*<<< orphan*/  connections; } ;
typedef  int /*<<< orphan*/  iscsi_event_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_TID_BLOCKS_ISCSI ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*) ; 
 int QED_FLAG_STORAGE_STARTED ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_tid_mem*) ; 
 struct qed_tid_mem* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct qed_tid_mem*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_dev*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct qed_dev *cdev,
			   struct qed_iscsi_tid *tasks,
			   void *event_context,
			   iscsi_event_cb_t async_event_cb)
{
	int rc;
	struct qed_tid_mem *tid_info;

	if (cdev->flags & QED_FLAG_STORAGE_STARTED) {
		FUNC0(cdev, "iscsi already started;\n");
		return 0;
	}

	rc = FUNC8(FUNC1(cdev), QED_SPQ_MODE_EBLOCK,
				     NULL, event_context, async_event_cb);
	if (rc) {
		FUNC0(cdev, "Failed to start iscsi\n");
		return rc;
	}

	cdev->flags |= QED_FLAG_STORAGE_STARTED;
	FUNC2(cdev->connections);

	if (!tasks)
		return 0;

	tid_info = FUNC4(sizeof(*tid_info), GFP_KERNEL);

	if (!tid_info) {
		FUNC7(cdev);
		return -ENOMEM;
	}

	rc = FUNC6(FUNC1(cdev), tid_info);
	if (rc) {
		FUNC0(cdev, "Failed to gather task information\n");
		FUNC7(cdev);
		FUNC3(tid_info);
		return rc;
	}

	/* Fill task information */
	tasks->size = tid_info->tid_size;
	tasks->num_tids_per_block = tid_info->num_tids_per_block;
	FUNC5(tasks->blocks, tid_info->blocks,
	       MAX_TID_BLOCKS_ISCSI * sizeof(u8 *));

	FUNC3(tid_info);

	return 0;
}