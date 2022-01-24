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
struct hl_device {int /*<<< orphan*/  cb_pool_lock; int /*<<< orphan*/  cb_pool; } ;
struct hl_cb {int /*<<< orphan*/  pool_list; scalar_t__ is_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hl_device*,struct hl_cb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hl_device *hdev, struct hl_cb *cb)
{
	if (cb->is_pool) {
		FUNC2(&hdev->cb_pool_lock);
		FUNC1(&cb->pool_list, &hdev->cb_pool);
		FUNC3(&hdev->cb_pool_lock);
	} else {
		FUNC0(hdev, cb);
	}
}