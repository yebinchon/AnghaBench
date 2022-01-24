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
typedef  int u64 ;
typedef  int u16 ;
struct hinic_pf_to_mgmt {struct hinic_hwif* hwif; } ;
struct hinic_hwif {int dummy; } ;
typedef  enum msg_ack_type { ____Placeholder_msg_ack_type } msg_ack_type ;
typedef  enum mgmt_direction_type { ____Placeholder_mgmt_direction_type } mgmt_direction_type ;
typedef  enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_MGMT_TO_PF ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  DIRECTION ; 
 int FUNC0 (struct hinic_hwif*) ; 
 int FUNC1 (struct hinic_hwif*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAST ; 
 int LAST_SEGMENT ; 
 int /*<<< orphan*/  MODULE ; 
 int /*<<< orphan*/  MSG_ID ; 
 int /*<<< orphan*/  MSG_LEN ; 
 int /*<<< orphan*/  NO_ACK ; 
 int /*<<< orphan*/  PCI_INTF ; 
 int /*<<< orphan*/  PF_IDX ; 
 int SEGMENT_LEN ; 
 int /*<<< orphan*/  SEG_LEN ; 
 int /*<<< orphan*/  SEQID ; 

__attribute__((used)) static u64 FUNC3(struct hinic_pf_to_mgmt *pf_to_mgmt,
			  u16 msg_len, enum hinic_mod_type mod,
			  enum msg_ack_type ack_type,
			  enum mgmt_direction_type direction,
			  u16 cmd, u16 msg_id)
{
	struct hinic_hwif *hwif = pf_to_mgmt->hwif;

	return FUNC2(msg_len, MSG_LEN)           |
	       FUNC2(mod, MODULE)                |
	       FUNC2(SEGMENT_LEN, SEG_LEN)       |
	       FUNC2(ack_type, NO_ACK)           |
	       FUNC2(0, ASYNC_MGMT_TO_PF)        |
	       FUNC2(0, SEQID)                   |
	       FUNC2(LAST_SEGMENT, LAST)         |
	       FUNC2(direction, DIRECTION)       |
	       FUNC2(cmd, CMD)                   |
	       FUNC2(FUNC0(hwif), PCI_INTF) |
	       FUNC2(FUNC1(hwif), PF_IDX)     |
	       FUNC2(msg_id, MSG_ID);
}