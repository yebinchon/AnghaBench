#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qed_ll2_buffer {int /*<<< orphan*/  list; int /*<<< orphan*/  data; int /*<<< orphan*/  phys_addr; } ;
struct qed_dev {TYPE_1__* ll2; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_cnt; int /*<<< orphan*/  rx_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev,
				 struct qed_ll2_buffer *buffer)
{
	FUNC4(&cdev->ll2->lock);

	FUNC1(&cdev->pdev->dev, buffer->phys_addr,
			 cdev->ll2->rx_size, DMA_FROM_DEVICE);
	FUNC2(buffer->data);
	FUNC3(&buffer->list);

	cdev->ll2->rx_cnt--;
	if (!cdev->ll2->rx_cnt)
		FUNC0(cdev, "All LL2 entries were removed\n");

	FUNC5(&cdev->ll2->lock);

	return 0;
}