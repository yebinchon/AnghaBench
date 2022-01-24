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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct hinic_pf_to_mgmt {int /*<<< orphan*/  sync_msg_buf; struct hinic_api_cmd_chain** cmd_chain; } ;
struct hinic_api_cmd_chain {int dummy; } ;
typedef  enum msg_ack_type { ____Placeholder_msg_ack_type } msg_ack_type ;
typedef  enum mgmt_direction_type { ____Placeholder_mgmt_direction_type } mgmt_direction_type ;
typedef  enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;

/* Variables and functions */
 size_t HINIC_API_CMD_WRITE_TO_MGMT_CPU ; 
 int /*<<< orphan*/  HINIC_NODE_ID_MGMT ; 
 int MGMT_RESP ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_pf_to_mgmt*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_pf_to_mgmt*) ; 
 int FUNC2 (struct hinic_api_cmd_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_pf_to_mgmt*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hinic_pf_to_mgmt *pf_to_mgmt,
			    enum hinic_mod_type mod, u8 cmd,
			    u8 *data, u16 data_len,
			    enum msg_ack_type ack_type,
			    enum mgmt_direction_type direction,
			    u16 resp_msg_id)
{
	struct hinic_api_cmd_chain *chain;
	u64 header;
	u16 msg_id;

	msg_id = FUNC0(pf_to_mgmt);

	if (direction == MGMT_RESP) {
		header = FUNC4(pf_to_mgmt, data_len, mod, ack_type,
					direction, cmd, resp_msg_id);
	} else {
		FUNC1(pf_to_mgmt);
		header = FUNC4(pf_to_mgmt, data_len, mod, ack_type,
					direction, cmd, msg_id);
	}

	FUNC5(pf_to_mgmt->sync_msg_buf, &header, data, data_len);

	chain = pf_to_mgmt->cmd_chain[HINIC_API_CMD_WRITE_TO_MGMT_CPU];
	return FUNC2(chain, HINIC_NODE_ID_MGMT,
				   pf_to_mgmt->sync_msg_buf,
				   FUNC3(data_len));
}