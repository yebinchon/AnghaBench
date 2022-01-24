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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int flags; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {scalar_t__ bss_type; int /*<<< orphan*/  adapter; scalar_t__ media_connected; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MSG ; 
 scalar_t__ MWIFIEX_BSS_TYPE_STA ; 
 int WIPHY_FLAG_SUPPORTS_TDLS ; 
#define  WLAN_PUB_ACTION_TDLS_DISCOVER_RES 133 
#define  WLAN_TDLS_DISCOVERY_REQUEST 132 
#define  WLAN_TDLS_SETUP_CONFIRM 131 
#define  WLAN_TDLS_SETUP_REQUEST 130 
#define  WLAN_TDLS_SETUP_RESPONSE 129 
#define  WLAN_TDLS_TEARDOWN 128 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_private*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int const*,...) ; 
 struct mwifiex_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct mwifiex_private*,int const*,int,int,int /*<<< orphan*/ ,int const*,size_t) ; 
 int FUNC4 (struct mwifiex_private*,int const*,int,int,int /*<<< orphan*/ ,int const*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct wiphy *wiphy, struct net_device *dev,
			   const u8 *peer, u8 action_code, u8 dialog_token,
			   u16 status_code, u32 peer_capability,
			   bool initiator, const u8 *extra_ies,
			   size_t extra_ies_len)
{
	struct mwifiex_private *priv = FUNC2(dev);
	int ret;

	if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
		return -ENOTSUPP;

	/* make sure we are in station mode and connected */
	if (!(priv->bss_type == MWIFIEX_BSS_TYPE_STA && priv->media_connected))
		return -ENOTSUPP;

	switch (action_code) {
	case WLAN_TDLS_SETUP_REQUEST:
		FUNC1(priv->adapter, MSG,
			    "Send TDLS Setup Request to %pM status_code=%d\n",
			    peer, status_code);
		FUNC0(priv, peer);
		ret = FUNC4(priv, peer, action_code,
						   dialog_token, status_code,
						   extra_ies, extra_ies_len);
		break;
	case WLAN_TDLS_SETUP_RESPONSE:
		FUNC0(priv, peer);
		FUNC1(priv->adapter, MSG,
			    "Send TDLS Setup Response to %pM status_code=%d\n",
			    peer, status_code);
		ret = FUNC4(priv, peer, action_code,
						   dialog_token, status_code,
						   extra_ies, extra_ies_len);
		break;
	case WLAN_TDLS_SETUP_CONFIRM:
		FUNC1(priv->adapter, MSG,
			    "Send TDLS Confirm to %pM status_code=%d\n", peer,
			    status_code);
		ret = FUNC4(priv, peer, action_code,
						   dialog_token, status_code,
						   extra_ies, extra_ies_len);
		break;
	case WLAN_TDLS_TEARDOWN:
		FUNC1(priv->adapter, MSG,
			    "Send TDLS Tear down to %pM\n", peer);
		ret = FUNC4(priv, peer, action_code,
						   dialog_token, status_code,
						   extra_ies, extra_ies_len);
		break;
	case WLAN_TDLS_DISCOVERY_REQUEST:
		FUNC1(priv->adapter, MSG,
			    "Send TDLS Discovery Request to %pM\n", peer);
		ret = FUNC4(priv, peer, action_code,
						   dialog_token, status_code,
						   extra_ies, extra_ies_len);
		break;
	case WLAN_PUB_ACTION_TDLS_DISCOVER_RES:
		FUNC1(priv->adapter, MSG,
			    "Send TDLS Discovery Response to %pM\n", peer);
		ret = FUNC3(priv, peer, action_code,
						   dialog_token, status_code,
						   extra_ies, extra_ies_len);
		break;
	default:
		FUNC1(priv->adapter, ERROR,
			    "Unknown TDLS mgmt/action frame %pM\n", peer);
		ret = -EINVAL;
		break;
	}

	return ret;
}