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
typedef  int u32 ;
typedef  int u16 ;
struct wmix_cmd_hdr {int /*<<< orphan*/  cmd_id; } ;
struct wmi {int /*<<< orphan*/  parent_dev; } ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
#define  WMIX_DBGLOG_EVENTID 129 
#define  WMIX_HB_CHALLENGE_RESP_EVENTID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wmi*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct wmi *wmi, struct sk_buff *skb)
{
	struct wmix_cmd_hdr *cmd;
	u32 len;
	u16 id;
	u8 *datap;
	int ret = 0;

	if (skb->len < sizeof(struct wmix_cmd_hdr)) {
		FUNC2("bad packet 1\n");
		return -EINVAL;
	}

	cmd = (struct wmix_cmd_hdr *) skb->data;
	id = FUNC5(cmd->cmd_id);

	FUNC6(skb, sizeof(struct wmix_cmd_hdr));

	datap = skb->data;
	len = skb->len;

	switch (id) {
	case WMIX_HB_CHALLENGE_RESP_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "wmi event hb challenge resp\n");
		FUNC4(wmi, datap, len);
		break;
	case WMIX_DBGLOG_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "wmi event dbglog len %d\n", len);
		FUNC1(wmi->parent_dev, datap, len);
		break;
	default:
		FUNC3("unknown cmd id 0x%x\n", id);
		ret = -EINVAL;
		break;
	}

	return ret;
}