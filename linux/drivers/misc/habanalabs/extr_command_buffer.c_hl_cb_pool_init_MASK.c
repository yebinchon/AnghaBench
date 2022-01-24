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
struct TYPE_2__ {int cb_pool_cb_cnt; int /*<<< orphan*/  cb_pool_cb_size; } ;
struct hl_device {int /*<<< orphan*/  cb_pool; TYPE_1__ asic_prop; int /*<<< orphan*/  cb_pool_lock; } ;
struct hl_cb {int is_pool; int /*<<< orphan*/  pool_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HL_KERNEL_ASID_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hl_cb* FUNC1 (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hl_device *hdev)
{
	struct hl_cb *cb;
	int i;

	FUNC0(&hdev->cb_pool);
	FUNC4(&hdev->cb_pool_lock);

	for (i = 0 ; i < hdev->asic_prop.cb_pool_cb_cnt ; i++) {
		cb = FUNC1(hdev, hdev->asic_prop.cb_pool_cb_size,
				HL_KERNEL_ASID_ID);
		if (cb) {
			cb->is_pool = true;
			FUNC3(&cb->pool_list, &hdev->cb_pool);
		} else {
			FUNC2(hdev);
			return -ENOMEM;
		}
	}

	return 0;
}