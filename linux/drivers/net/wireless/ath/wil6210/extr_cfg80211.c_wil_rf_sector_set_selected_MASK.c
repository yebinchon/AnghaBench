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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ mid; int /*<<< orphan*/  status; } ;
struct wil6210_priv {scalar_t__ max_assoc_sta; TYPE_1__* sta; int /*<<< orphan*/  fw_capabilities; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ mid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 size_t QCA_ATTR_DMG_RF_SECTOR_INDEX ; 
 int /*<<< orphan*/  QCA_ATTR_DMG_RF_SECTOR_MAX ; 
 size_t QCA_ATTR_DMG_RF_SECTOR_TYPE ; 
 scalar_t__ QCA_ATTR_DMG_RF_SECTOR_TYPE_MAX ; 
 size_t QCA_ATTR_MAC_ADDR ; 
 scalar_t__ WIL_CID_ALL ; 
 scalar_t__ WIL_MAX_RF_SECTORS ; 
 int /*<<< orphan*/  WMI_FW_CAPABILITY_RF_SECTORS ; 
 scalar_t__ WMI_INVALID_RF_SECTOR_INDEX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wil6210_vif* FUNC7 (struct wil6210_priv*,struct wireless_dev*) ; 
 struct wil6210_priv* FUNC8 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,...) ; 
 int FUNC10 (struct wil6210_priv*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  wil_rf_sector_policy ; 
 int FUNC11 (struct wil6210_priv*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  wil_vif_fwconnected ; 

__attribute__((used)) static int FUNC12(struct wiphy *wiphy,
				      struct wireless_dev *wdev,
				      const void *data, int data_len)
{
	struct wil6210_priv *wil = FUNC8(wdev);
	struct wil6210_vif *vif = FUNC7(wil, wdev);
	int rc;
	struct nlattr *tb[QCA_ATTR_DMG_RF_SECTOR_MAX + 1];
	u16 sector_index;
	u8 sector_type, mac_addr[ETH_ALEN], i;
	int cid = 0;

	if (!FUNC6(WMI_FW_CAPABILITY_RF_SECTORS, wil->fw_capabilities))
		return -EOPNOTSUPP;

	rc = FUNC5(tb, QCA_ATTR_DMG_RF_SECTOR_MAX, data,
				  data_len, wil_rf_sector_policy, NULL);
	if (rc) {
		FUNC9(wil, "Invalid rf sector ATTR\n");
		return rc;
	}

	if (!tb[QCA_ATTR_DMG_RF_SECTOR_INDEX] ||
	    !tb[QCA_ATTR_DMG_RF_SECTOR_TYPE]) {
		FUNC9(wil, "Invalid rf sector spec\n");
		return -EINVAL;
	}

	sector_index = FUNC3(
		tb[QCA_ATTR_DMG_RF_SECTOR_INDEX]);
	if (sector_index >= WIL_MAX_RF_SECTORS &&
	    sector_index != WMI_INVALID_RF_SECTOR_INDEX) {
		FUNC9(wil, "Invalid sector index %d\n", sector_index);
		return -EINVAL;
	}

	sector_type = FUNC4(tb[QCA_ATTR_DMG_RF_SECTOR_TYPE]);
	if (sector_type >= QCA_ATTR_DMG_RF_SECTOR_TYPE_MAX) {
		FUNC9(wil, "Invalid sector type %d\n", sector_type);
		return -EINVAL;
	}

	if (tb[QCA_ATTR_MAC_ADDR]) {
		FUNC0(mac_addr, FUNC2(tb[QCA_ATTR_MAC_ADDR]));
		if (!FUNC1(mac_addr)) {
			cid = FUNC10(wil, vif->mid, mac_addr);
			if (cid < 0) {
				FUNC9(wil, "invalid MAC address %pM\n",
					mac_addr);
				return -ENOENT;
			}
		} else {
			if (sector_index != WMI_INVALID_RF_SECTOR_INDEX) {
				FUNC9(wil, "broadcast MAC valid only with unlocking\n");
				return -EINVAL;
			}
			cid = -1;
		}
	} else {
		if (FUNC6(wil_vif_fwconnected, vif->status)) {
			FUNC9(wil, "must specify MAC address when connected\n");
			return -EINVAL;
		}
		/* otherwise, using cid=0 for unassociated station */
	}

	if (cid >= 0) {
		rc = FUNC11(wil, vif->mid, sector_index,
						    sector_type, cid);
	} else {
		/* unlock all cids */
		rc = FUNC11(
			wil, vif->mid, WMI_INVALID_RF_SECTOR_INDEX,
			sector_type, WIL_CID_ALL);
		if (rc == -EINVAL) {
			for (i = 0; i < wil->max_assoc_sta; i++) {
				if (wil->sta[i].mid != vif->mid)
					continue;
				rc = FUNC11(
					wil, vif->mid,
					WMI_INVALID_RF_SECTOR_INDEX,
					sector_type, i);
				/* the FW will silently ignore and return
				 * success for unused cid, so abort the loop
				 * on any other error
				 */
				if (rc) {
					FUNC9(wil, "unlock cid %d failed with status %d\n",
						i, rc);
					break;
				}
			}
		}
	}

	return rc;
}