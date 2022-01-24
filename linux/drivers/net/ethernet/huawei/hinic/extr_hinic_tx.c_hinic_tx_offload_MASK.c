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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct hinic_sq_task {int dummy; } ;
typedef  enum hinic_offload_type { ____Placeholder_hinic_offload_type } hinic_offload_type ;

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 scalar_t__ HINIC_MSS_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_PAYLOAD_OFFSET ; 
 int /*<<< orphan*/  QUEUE_INFO_MSS ; 
 int /*<<< orphan*/  QUEUE_INFO_PLDOFF ; 
 int TX_OFFLOAD_CSUM ; 
 int TX_OFFLOAD_TSO ; 
 int TX_OFFLOAD_VLAN ; 
 int VLAN_PRIO_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_sq_task*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hinic_sq_task*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC5 (struct hinic_sq_task*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_sq_task*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct hinic_sq_task *task,
			    u32 *queue_info)
{
	enum hinic_offload_type offload = 0;
	u16 vlan_tag;
	int enabled;

	enabled = FUNC5(task, queue_info, skb);
	if (enabled > 0) {
		offload |= TX_OFFLOAD_TSO;
	} else if (enabled == 0) {
		enabled = FUNC4(task, queue_info, skb);
		if (enabled)
			offload |= TX_OFFLOAD_CSUM;
	} else {
		return -EPROTONOSUPPORT;
	}

	if (FUNC10(FUNC9(skb))) {
		vlan_tag = FUNC8(skb);
		FUNC6(task, queue_info, vlan_tag,
			     vlan_tag >> VLAN_PRIO_SHIFT);
		offload |= TX_OFFLOAD_VLAN;
	}

	if (offload)
		FUNC3(task, FUNC7(skb));

	/* payload offset should not more than 221 */
	if (FUNC1(*queue_info, QUEUE_INFO_PLDOFF) >
	    MAX_PAYLOAD_OFFSET) {
		return -EPROTONOSUPPORT;
	}

	/* mss should not less than 80 */
	if (FUNC1(*queue_info, QUEUE_INFO_MSS) < HINIC_MSS_MIN) {
		*queue_info = FUNC0(*queue_info, QUEUE_INFO_MSS);
		*queue_info |= FUNC2(HINIC_MSS_MIN, QUEUE_INFO_MSS);
	}

	return 0;
}