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
struct timer_list {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  default_reset_request; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hclge_dev* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct hclge_dev* hdev ; 
 int /*<<< orphan*/  reset_timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct hclge_dev *hdev = FUNC1(hdev, t, reset_timer);

	/* if default_reset_request has no value, it means that this reset
	 * request has already be handled, so just return here
	 */
	if (!hdev->default_reset_request)
		return;

	FUNC0(&hdev->pdev->dev,
		 "triggering reset in reset timer\n");
	FUNC2(hdev->pdev, NULL);
}