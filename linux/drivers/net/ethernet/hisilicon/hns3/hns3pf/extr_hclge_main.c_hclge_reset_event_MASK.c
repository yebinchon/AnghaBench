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
struct pci_dev {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct hclge_dev {scalar_t__ reset_level; int /*<<< orphan*/  reset_request; TYPE_2__* pdev; scalar_t__ last_reset_time; scalar_t__ default_reset_request; int /*<<< orphan*/  reset_timer; TYPE_1__* vport; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct hnae3_handle nic; } ;

/* Variables and functions */
 scalar_t__ HCLGE_RESET_INTERVAL ; 
 scalar_t__ HNAE3_FUNC_RESET ; 
 scalar_t__ HNAE3_GLOBAL_RESET ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct hnae3_ae_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct hnae3_ae_dev* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev, struct hnae3_handle *handle)
{
	struct hnae3_ae_dev *ae_dev = FUNC4(pdev);
	struct hclge_dev *hdev = ae_dev->priv;

	/* We might end up getting called broadly because of 2 below cases:
	 * 1. Recoverable error was conveyed through APEI and only way to bring
	 *    normalcy is to reset.
	 * 2. A new reset request from the stack due to timeout
	 *
	 * For the first case,error event might not have ae handle available.
	 * check if this is a new reset request and we are not here just because
	 * last reset attempt did not succeed and watchdog hit us again. We will
	 * know this if last reset request did not occur very recently (watchdog
	 * timer = 5*HZ, let us check after sufficiently large time, say 4*5*Hz)
	 * In case of new request we reset the "reset level" to PF reset.
	 * And if it is a repeat reset request of the most recent one then we
	 * want to make sure we throttle the reset request. Therefore, we will
	 * not allow it again before 3*HZ times.
	 */
	if (!handle)
		handle = &hdev->vport[0].nic;

	if (FUNC7(jiffies, (hdev->last_reset_time +
				  HCLGE_RESET_INTERVAL))) {
		FUNC3(&hdev->reset_timer, jiffies + HCLGE_RESET_INTERVAL);
		return;
	} else if (hdev->default_reset_request)
		hdev->reset_level =
			FUNC1(ae_dev,
					      &hdev->default_reset_request);
	else if (FUNC6(jiffies, (hdev->last_reset_time + 4 * 5 * HZ)))
		hdev->reset_level = HNAE3_FUNC_RESET;

	FUNC0(&hdev->pdev->dev, "received reset event, reset type is %d\n",
		 hdev->reset_level);

	/* request reset & schedule reset task */
	FUNC5(hdev->reset_level, &hdev->reset_request);
	FUNC2(hdev);

	if (hdev->reset_level < HNAE3_GLOBAL_RESET)
		hdev->reset_level++;
}