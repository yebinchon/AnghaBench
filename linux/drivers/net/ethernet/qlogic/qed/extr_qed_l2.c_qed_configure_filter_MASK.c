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
struct TYPE_2__ {int accept_flags; int /*<<< orphan*/  mcast; int /*<<< orphan*/  ucast; } ;
struct qed_filter_params {int type; TYPE_1__ filter; } ;
struct qed_dev {int dummy; } ;
typedef  enum qed_filter_rx_mode_type { ____Placeholder_qed_filter_rx_mode_type } qed_filter_rx_mode_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int) ; 
 int EINVAL ; 
#define  QED_FILTER_TYPE_MCAST 130 
#define  QED_FILTER_TYPE_RX_MODE 129 
#define  QED_FILTER_TYPE_UCAST 128 
 int FUNC1 (struct qed_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qed_dev*,int) ; 
 int FUNC3 (struct qed_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev,
				struct qed_filter_params *params)
{
	enum qed_filter_rx_mode_type accept_flags;

	switch (params->type) {
	case QED_FILTER_TYPE_UCAST:
		return FUNC3(cdev, &params->filter.ucast);
	case QED_FILTER_TYPE_MCAST:
		return FUNC1(cdev, &params->filter.mcast);
	case QED_FILTER_TYPE_RX_MODE:
		accept_flags = params->filter.accept_flags;
		return FUNC2(cdev, accept_flags);
	default:
		FUNC0(cdev, "Unknown filter type %d\n", (int)params->type);
		return -EINVAL;
	}
}