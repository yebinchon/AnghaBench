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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ie_list {TYPE_1__* ie_list; int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;
struct mwifiex_ie {int /*<<< orphan*/  ie_index; int /*<<< orphan*/  ie_length; } ;
struct TYPE_2__ {int /*<<< orphan*/  ie_index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE_MAX_IE_SIZE ; 
 int MWIFIEX_AUTO_IDX_MASK ; 
 int /*<<< orphan*/  TLV_TYPE_MGMT_IE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ie_list*) ; 
 struct mwifiex_ie_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mwifiex_ie*,int) ; 
 int FUNC6 (struct mwifiex_private*,struct mwifiex_ie_list*) ; 

__attribute__((used)) static int
FUNC7(struct mwifiex_private *priv,
			     struct mwifiex_ie *beacon_ie, u16 *beacon_idx,
			     struct mwifiex_ie *pr_ie, u16 *probe_idx,
			     struct mwifiex_ie *ar_ie, u16 *assoc_idx)
{
	struct mwifiex_ie_list *ap_custom_ie;
	u8 *pos;
	u16 len;
	int ret;

	ap_custom_ie = FUNC2(sizeof(*ap_custom_ie), GFP_KERNEL);
	if (!ap_custom_ie)
		return -ENOMEM;

	ap_custom_ie->type = FUNC0(TLV_TYPE_MGMT_IE);
	pos = (u8 *)ap_custom_ie->ie_list;

	if (beacon_ie) {
		len = sizeof(struct mwifiex_ie) - IEEE_MAX_IE_SIZE +
		      FUNC3(beacon_ie->ie_length);
		FUNC5(pos, beacon_ie, len);
		pos += len;
		FUNC4(&ap_custom_ie->len, len);
	}
	if (pr_ie) {
		len = sizeof(struct mwifiex_ie) - IEEE_MAX_IE_SIZE +
		      FUNC3(pr_ie->ie_length);
		FUNC5(pos, pr_ie, len);
		pos += len;
		FUNC4(&ap_custom_ie->len, len);
	}
	if (ar_ie) {
		len = sizeof(struct mwifiex_ie) - IEEE_MAX_IE_SIZE +
		      FUNC3(ar_ie->ie_length);
		FUNC5(pos, ar_ie, len);
		pos += len;
		FUNC4(&ap_custom_ie->len, len);
	}

	ret = FUNC6(priv, ap_custom_ie);

	pos = (u8 *)(&ap_custom_ie->ie_list[0].ie_index);
	if (beacon_ie && *beacon_idx == MWIFIEX_AUTO_IDX_MASK) {
		/* save beacon ie index after auto-indexing */
		*beacon_idx = FUNC3(ap_custom_ie->ie_list[0].ie_index);
		len = sizeof(*beacon_ie) - IEEE_MAX_IE_SIZE +
		      FUNC3(beacon_ie->ie_length);
		pos += len;
	}
	if (pr_ie && FUNC3(pr_ie->ie_index) == MWIFIEX_AUTO_IDX_MASK) {
		/* save probe resp ie index after auto-indexing */
		*probe_idx = *((u16 *)pos);
		len = sizeof(*pr_ie) - IEEE_MAX_IE_SIZE +
		      FUNC3(pr_ie->ie_length);
		pos += len;
	}
	if (ar_ie && FUNC3(ar_ie->ie_index) == MWIFIEX_AUTO_IDX_MASK)
		/* save assoc resp ie index after auto-indexing */
		*assoc_idx = *((u16 *)pos);

	FUNC1(ap_custom_ie);
	return ret;
}