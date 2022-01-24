#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_8__ {TYPE_3__* chan; } ;
struct mwifiex_private {TYPE_4__ dfs_chandef; int /*<<< orphan*/  netdev; int /*<<< orphan*/  dfs_cac_work; int /*<<< orphan*/  adapter; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  radar; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;
struct mwifiex_ie_types_chan_rpt_data {TYPE_2__ map; TYPE_1__ header; } ;
struct host_cmd_ds_chan_rpt_event {int /*<<< orphan*/  tlvbuf; int /*<<< orphan*/  result; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HostCmd_RESULT_OK ; 
 int /*<<< orphan*/  MSG ; 
 int /*<<< orphan*/  NL80211_RADAR_DETECTED ; 
#define  TLV_TYPE_CHANRPT_11H_BASIC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

int FUNC5(struct mwifiex_private *priv,
				     struct sk_buff *skb)
{
	struct host_cmd_ds_chan_rpt_event *rpt_event;
	struct mwifiex_ie_types_chan_rpt_data *rpt;
	u8 *evt_buf;
	u16 event_len, tlv_len;

	rpt_event = (void *)(skb->data + sizeof(u32));
	event_len = skb->len - (sizeof(struct host_cmd_ds_chan_rpt_event)+
				sizeof(u32));

	if (FUNC3(rpt_event->result) != HostCmd_RESULT_OK) {
		FUNC4(priv->adapter, ERROR,
			    "Error in channel report event\n");
		return -1;
	}

	evt_buf = (void *)&rpt_event->tlvbuf;

	while (event_len >= sizeof(struct mwifiex_ie_types_header)) {
		rpt = (void *)&rpt_event->tlvbuf;
		tlv_len = FUNC2(rpt->header.len);

		switch (FUNC2(rpt->header.type)) {
		case TLV_TYPE_CHANRPT_11H_BASIC:
			if (rpt->map.radar) {
				FUNC4(priv->adapter, MSG,
					    "RADAR Detected on channel %d!\n",
					    priv->dfs_chandef.chan->hw_value);
				FUNC0(&priv->dfs_cac_work);
				FUNC1(priv->netdev,
						   &priv->dfs_chandef,
						   NL80211_RADAR_DETECTED,
						   GFP_KERNEL);
			}
			break;
		default:
			break;
		}

		evt_buf += (tlv_len + sizeof(rpt->header));
		event_len -= (tlv_len + sizeof(rpt->header));
	}

	return 0;
}