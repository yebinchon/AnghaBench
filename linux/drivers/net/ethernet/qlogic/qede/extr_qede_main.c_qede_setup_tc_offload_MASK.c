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
struct tc_mqprio_qopt {int /*<<< orphan*/  num_tc; int /*<<< orphan*/  hw; } ;
struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  TC_MQPRIO_HW_OFFLOAD_TCS ; 
#define  TC_SETUP_BLOCK 129 
#define  TC_SETUP_QDISC_MQPRIO 128 
 int FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct qede_dev*,struct qede_dev*,int) ; 
 struct qede_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  qede_block_cb_list ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qede_setup_tc_block_cb ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev, enum tc_setup_type type,
		      void *type_data)
{
	struct qede_dev *edev = FUNC1(dev);
	struct tc_mqprio_qopt *mqprio;

	switch (type) {
	case TC_SETUP_BLOCK:
		return FUNC0(type_data,
						  &qede_block_cb_list,
						  qede_setup_tc_block_cb,
						  edev, edev, true);
	case TC_SETUP_QDISC_MQPRIO:
		mqprio = type_data;

		mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
		return FUNC2(dev, mqprio->num_tc);
	default:
		return -EOPNOTSUPP;
	}
}