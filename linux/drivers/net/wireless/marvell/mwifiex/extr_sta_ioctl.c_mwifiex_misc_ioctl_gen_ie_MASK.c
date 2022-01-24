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
typedef  int /*<<< orphan*/  u16 ;
struct mwifiex_private {int /*<<< orphan*/  wpa_ie; int /*<<< orphan*/  wpa_ie_len; struct mwifiex_adapter* adapter; } ;
struct mwifiex_ds_misc_gen_ie {int type; int /*<<< orphan*/  len; int /*<<< orphan*/  ie_data; } ;
struct mwifiex_adapter {int /*<<< orphan*/  arp_filter_size; int /*<<< orphan*/  arp_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARP_FILTER_MAX_BUF_SIZE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_GET ; 
#define  MWIFIEX_IE_TYPE_ARP_FILTER 129 
#define  MWIFIEX_IE_TYPE_GEN_IE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mwifiex_private *priv,
				     struct mwifiex_ds_misc_gen_ie *gen_ie,
				     u16 action)
{
	struct mwifiex_adapter *adapter = priv->adapter;

	switch (gen_ie->type) {
	case MWIFIEX_IE_TYPE_GEN_IE:
		if (action == HostCmd_ACT_GEN_GET) {
			gen_ie->len = priv->wpa_ie_len;
			FUNC0(gen_ie->ie_data, priv->wpa_ie, gen_ie->len);
		} else {
			FUNC3(priv, gen_ie->ie_data,
						  (u16) gen_ie->len);
		}
		break;
	case MWIFIEX_IE_TYPE_ARP_FILTER:
		FUNC1(adapter->arp_filter, 0, sizeof(adapter->arp_filter));
		if (gen_ie->len > ARP_FILTER_MAX_BUF_SIZE) {
			adapter->arp_filter_size = 0;
			FUNC2(adapter, ERROR,
				    "invalid ARP filter size\n");
			return -1;
		} else {
			FUNC0(adapter->arp_filter, gen_ie->ie_data,
			       gen_ie->len);
			adapter->arp_filter_size = gen_ie->len;
		}
		break;
	default:
		FUNC2(adapter, ERROR, "invalid IE type\n");
		return -1;
	}
	return 0;
}