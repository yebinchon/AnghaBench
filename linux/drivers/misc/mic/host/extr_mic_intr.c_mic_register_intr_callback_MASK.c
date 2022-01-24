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
typedef  size_t u8 ;
struct mic_intr_cb {int cb_id; int /*<<< orphan*/  list; void* data; void* thread_fn; void* handler; } ;
struct TYPE_2__ {int /*<<< orphan*/  mic_thread_lock; int /*<<< orphan*/  mic_intr_lock; int /*<<< orphan*/ * cb_list; int /*<<< orphan*/  cb_ida; } ;
struct mic_device {TYPE_1__ irq_info; } ;
typedef  void* irq_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct mic_intr_cb* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mic_intr_cb*) ; 
 struct mic_intr_cb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct mic_intr_cb *FUNC9(struct mic_device *mdev,
			u8 idx, irq_handler_t handler, irq_handler_t thread_fn,
			void *data)
{
	struct mic_intr_cb *intr_cb;
	unsigned long flags;
	int rc;
	intr_cb = FUNC3(sizeof(*intr_cb), GFP_KERNEL);

	if (!intr_cb)
		return FUNC0(-ENOMEM);

	intr_cb->handler = handler;
	intr_cb->thread_fn = thread_fn;
	intr_cb->data = data;
	intr_cb->cb_id = FUNC1(&mdev->irq_info.cb_ida,
		0, 0, GFP_KERNEL);
	if (intr_cb->cb_id < 0) {
		rc = intr_cb->cb_id;
		goto ida_fail;
	}

	FUNC5(&mdev->irq_info.mic_thread_lock);
	FUNC6(&mdev->irq_info.mic_intr_lock, flags);
	FUNC4(&intr_cb->list, &mdev->irq_info.cb_list[idx]);
	FUNC8(&mdev->irq_info.mic_intr_lock, flags);
	FUNC7(&mdev->irq_info.mic_thread_lock);

	return intr_cb;
ida_fail:
	FUNC2(intr_cb);
	return FUNC0(rc);
}