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
typedef  int /*<<< orphan*/  u32 ;
struct hclgevf_dev {int /*<<< orphan*/  misc_vector; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum hclgevf_evt_cause { ____Placeholder_hclgevf_evt_cause } hclgevf_evt_cause ;

/* Variables and functions */
#define  HCLGEVF_VECTOR0_EVENT_MBX 129 
 int HCLGEVF_VECTOR0_EVENT_OTHER ; 
#define  HCLGEVF_VECTOR0_EVENT_RST 128 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct hclgevf_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hclgevf_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclgevf_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	enum hclgevf_evt_cause event_cause;
	struct hclgevf_dev *hdev = data;
	u32 clearval;

	FUNC2(&hdev->misc_vector, false);
	event_cause = FUNC0(hdev, &clearval);

	switch (event_cause) {
	case HCLGEVF_VECTOR0_EVENT_RST:
		FUNC4(hdev);
		break;
	case HCLGEVF_VECTOR0_EVENT_MBX:
		FUNC3(hdev);
		break;
	default:
		break;
	}

	if (event_cause != HCLGEVF_VECTOR0_EVENT_OTHER) {
		FUNC1(hdev, clearval);
		FUNC2(&hdev->misc_vector, true);
	}

	return IRQ_HANDLED;
}