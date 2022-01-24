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
struct hnae3_ae_dev {int dummy; } ;
struct hclge_dev {scalar_t__ reset_type; int /*<<< orphan*/  reset_request; int /*<<< orphan*/  reset_pending; int /*<<< orphan*/  last_reset_time; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ HNAE3_NONE_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct hclge_dev*) ; 
 void* FUNC1 (struct hnae3_ae_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct hnae3_ae_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hclge_dev *hdev)
{
	struct hnae3_ae_dev *ae_dev = FUNC3(hdev->pdev);

	/* check if there is any ongoing reset in the hardware. This status can
	 * be checked from reset_pending. If there is then, we need to wait for
	 * hardware to complete reset.
	 *    a. If we are able to figure out in reasonable time that hardware
	 *       has fully resetted then, we can proceed with driver, client
	 *       reset.
	 *    b. else, we can come back later to check this status so re-sched
	 *       now.
	 */
	hdev->last_reset_time = jiffies;
	hdev->reset_type = FUNC1(ae_dev, &hdev->reset_pending);
	if (hdev->reset_type != HNAE3_NONE_RESET)
		FUNC2(hdev);

	/* check if we got any *new* reset requests to be honored */
	hdev->reset_type = FUNC1(ae_dev, &hdev->reset_request);
	if (hdev->reset_type != HNAE3_NONE_RESET)
		FUNC0(hdev);

	hdev->reset_type = HNAE3_NONE_RESET;
}