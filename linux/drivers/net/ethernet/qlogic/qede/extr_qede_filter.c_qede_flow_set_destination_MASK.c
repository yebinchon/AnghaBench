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
struct qede_dev {int dummy; } ;
struct qede_arfs_fltr_node {int b_is_drop; scalar_t__ vfid; int /*<<< orphan*/  rxq_id; int /*<<< orphan*/  next_rxq_id; } ;
struct ethtool_rx_flow_spec {scalar_t__ ring_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 scalar_t__ RX_CLS_FLOW_DISC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct qede_dev *edev,
				      struct qede_arfs_fltr_node *n,
				      struct ethtool_rx_flow_spec *fs)
{
	if (fs->ring_cookie == RX_CLS_FLOW_DISC) {
		n->b_is_drop = true;
		return;
	}

	n->vfid = FUNC2(fs->ring_cookie);
	n->rxq_id = FUNC1(fs->ring_cookie);
	n->next_rxq_id = n->rxq_id;

	if (n->vfid)
		FUNC0(edev, QED_MSG_SP,
			   "Configuring N-tuple for VF 0x%02x\n", n->vfid - 1);
}