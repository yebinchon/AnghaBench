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
struct qed_filter_mcast_params {int type; int num; int /*<<< orphan*/ * mac; } ;
struct qed_filter_mcast {int num_mc_addrs; int /*<<< orphan*/ * mac; int /*<<< orphan*/  opcode; } ;
struct qed_dev {int dummy; } ;
typedef  int /*<<< orphan*/  mcast ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,int) ; 
 int /*<<< orphan*/  QED_FILTER_ADD ; 
 int /*<<< orphan*/  QED_FILTER_REMOVE ; 
#define  QED_FILTER_XCAST_TYPE_ADD 129 
#define  QED_FILTER_XCAST_TYPE_DEL 128 
 int /*<<< orphan*/  QED_SPQ_MODE_CB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_filter_mcast*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qed_dev*,struct qed_filter_mcast*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev,
				      struct qed_filter_mcast_params *params)
{
	struct qed_filter_mcast mcast;
	int i;

	FUNC2(&mcast, 0, sizeof(mcast));
	switch (params->type) {
	case QED_FILTER_XCAST_TYPE_ADD:
		mcast.opcode = QED_FILTER_ADD;
		break;
	case QED_FILTER_XCAST_TYPE_DEL:
		mcast.opcode = QED_FILTER_REMOVE;
		break;
	default:
		FUNC0(cdev, "Unknown multicast filter type %d\n",
			  params->type);
	}

	mcast.num_mc_addrs = params->num;
	for (i = 0; i < mcast.num_mc_addrs; i++)
		FUNC1(mcast.mac[i], params->mac[i]);

	return FUNC3(cdev, &mcast, QED_SPQ_MODE_CB, NULL);
}