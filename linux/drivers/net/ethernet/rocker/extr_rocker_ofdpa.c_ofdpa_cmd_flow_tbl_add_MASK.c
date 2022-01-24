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
struct rocker_tlv {int dummy; } ;
struct rocker_port {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct TYPE_2__ {int tbl_id; int /*<<< orphan*/  priority; } ;
struct ofdpa_flow_tbl_entry {int cmd; TYPE_1__ key; int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOTSUPP ; 
#define  ROCKER_OF_DPA_TABLE_ID_ACL_POLICY 133 
#define  ROCKER_OF_DPA_TABLE_ID_BRIDGING 132 
#define  ROCKER_OF_DPA_TABLE_ID_INGRESS_PORT 131 
#define  ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC 130 
#define  ROCKER_OF_DPA_TABLE_ID_UNICAST_ROUTING 129 
#define  ROCKER_OF_DPA_TABLE_ID_VLAN 128 
 int /*<<< orphan*/  ROCKER_TLV_CMD_INFO ; 
 int /*<<< orphan*/  ROCKER_TLV_CMD_TYPE ; 
 int /*<<< orphan*/  ROCKER_TLV_OF_DPA_COOKIE ; 
 int /*<<< orphan*/  ROCKER_TLV_OF_DPA_HARDTIME ; 
 int /*<<< orphan*/  ROCKER_TLV_OF_DPA_PRIORITY ; 
 int /*<<< orphan*/  ROCKER_TLV_OF_DPA_TABLE_ID ; 
 int FUNC0 (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ; 
 int FUNC1 (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ; 
 int FUNC2 (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ; 
 int FUNC3 (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ; 
 int FUNC4 (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ; 
 int FUNC5 (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ; 
 int /*<<< orphan*/  FUNC6 (struct rocker_desc_info*,struct rocker_tlv*) ; 
 struct rocker_tlv* FUNC7 (struct rocker_desc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rocker_desc_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const struct rocker_port *rocker_port,
				  struct rocker_desc_info *desc_info,
				  void *priv)
{
	const struct ofdpa_flow_tbl_entry *entry = priv;
	struct rocker_tlv *cmd_info;
	int err = 0;

	if (FUNC8(desc_info, ROCKER_TLV_CMD_TYPE, entry->cmd))
		return -EMSGSIZE;
	cmd_info = FUNC7(desc_info, ROCKER_TLV_CMD_INFO);
	if (!cmd_info)
		return -EMSGSIZE;
	if (FUNC8(desc_info, ROCKER_TLV_OF_DPA_TABLE_ID,
			       entry->key.tbl_id))
		return -EMSGSIZE;
	if (FUNC9(desc_info, ROCKER_TLV_OF_DPA_PRIORITY,
			       entry->key.priority))
		return -EMSGSIZE;
	if (FUNC9(desc_info, ROCKER_TLV_OF_DPA_HARDTIME, 0))
		return -EMSGSIZE;
	if (FUNC10(desc_info, ROCKER_TLV_OF_DPA_COOKIE,
			       entry->cookie))
		return -EMSGSIZE;

	switch (entry->key.tbl_id) {
	case ROCKER_OF_DPA_TABLE_ID_INGRESS_PORT:
		err = FUNC2(desc_info, entry);
		break;
	case ROCKER_OF_DPA_TABLE_ID_VLAN:
		err = FUNC5(desc_info, entry);
		break;
	case ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC:
		err = FUNC3(desc_info, entry);
		break;
	case ROCKER_OF_DPA_TABLE_ID_UNICAST_ROUTING:
		err = FUNC4(desc_info, entry);
		break;
	case ROCKER_OF_DPA_TABLE_ID_BRIDGING:
		err = FUNC1(desc_info, entry);
		break;
	case ROCKER_OF_DPA_TABLE_ID_ACL_POLICY:
		err = FUNC0(desc_info, entry);
		break;
	default:
		err = -ENOTSUPP;
		break;
	}

	if (err)
		return err;

	FUNC6(desc_info, cmd_info);

	return 0;
}