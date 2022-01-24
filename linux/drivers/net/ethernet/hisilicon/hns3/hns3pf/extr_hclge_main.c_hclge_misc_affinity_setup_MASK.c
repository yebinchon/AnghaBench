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
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  notify; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector_irq; } ;
struct hclge_dev {TYPE_2__ affinity_notify; TYPE_1__ misc_vector; int /*<<< orphan*/  affinity_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  hclge_irq_affinity_notify ; 
 int /*<<< orphan*/  hclge_irq_affinity_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct hclge_dev *hdev)
{
	FUNC0(hdev->misc_vector.vector_irq,
			      &hdev->affinity_mask);

	hdev->affinity_notify.notify = hclge_irq_affinity_notify;
	hdev->affinity_notify.release = hclge_irq_affinity_release;
	FUNC1(hdev->misc_vector.vector_irq,
				  &hdev->affinity_notify);
}