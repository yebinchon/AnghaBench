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
struct mwifiex_private {int /*<<< orphan*/  assocresp_idx; int /*<<< orphan*/  proberesp_idx; int /*<<< orphan*/  beacon_idx; int /*<<< orphan*/  gen_idx; } ;
struct mwifiex_ie {scalar_t__ ie_length; void* mgmt_subtype_mask; void* ie_index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MWIFIEX_AUTO_IDX_MASK ; 
 int /*<<< orphan*/  MWIFIEX_DELETE_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ie*) ; 
 struct mwifiex_ie* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mwifiex_private*,struct mwifiex_ie*,int /*<<< orphan*/ *,struct mwifiex_ie*,int /*<<< orphan*/ *,struct mwifiex_ie*,int /*<<< orphan*/ *) ; 

int FUNC4(struct mwifiex_private *priv)
{
	struct mwifiex_ie *beacon_ie = NULL, *pr_ie = NULL;
	struct mwifiex_ie *ar_ie = NULL, *gen_ie = NULL;
	int ret = 0;

	if (priv->gen_idx != MWIFIEX_AUTO_IDX_MASK) {
		gen_ie = FUNC2(sizeof(*gen_ie), GFP_KERNEL);
		if (!gen_ie)
			return -ENOMEM;

		gen_ie->ie_index = FUNC0(priv->gen_idx);
		gen_ie->mgmt_subtype_mask = FUNC0(MWIFIEX_DELETE_MASK);
		gen_ie->ie_length = 0;
		if (FUNC3(priv, gen_ie, &priv->gen_idx,
						 NULL, &priv->proberesp_idx,
						 NULL, &priv->assocresp_idx)) {
			ret = -1;
			goto done;
		}

		priv->gen_idx = MWIFIEX_AUTO_IDX_MASK;
	}

	if (priv->beacon_idx != MWIFIEX_AUTO_IDX_MASK) {
		beacon_ie = FUNC2(sizeof(struct mwifiex_ie), GFP_KERNEL);
		if (!beacon_ie) {
			ret = -ENOMEM;
			goto done;
		}
		beacon_ie->ie_index = FUNC0(priv->beacon_idx);
		beacon_ie->mgmt_subtype_mask = FUNC0(MWIFIEX_DELETE_MASK);
		beacon_ie->ie_length = 0;
	}
	if (priv->proberesp_idx != MWIFIEX_AUTO_IDX_MASK) {
		pr_ie = FUNC2(sizeof(struct mwifiex_ie), GFP_KERNEL);
		if (!pr_ie) {
			ret = -ENOMEM;
			goto done;
		}
		pr_ie->ie_index = FUNC0(priv->proberesp_idx);
		pr_ie->mgmt_subtype_mask = FUNC0(MWIFIEX_DELETE_MASK);
		pr_ie->ie_length = 0;
	}
	if (priv->assocresp_idx != MWIFIEX_AUTO_IDX_MASK) {
		ar_ie = FUNC2(sizeof(struct mwifiex_ie), GFP_KERNEL);
		if (!ar_ie) {
			ret = -ENOMEM;
			goto done;
		}
		ar_ie->ie_index = FUNC0(priv->assocresp_idx);
		ar_ie->mgmt_subtype_mask = FUNC0(MWIFIEX_DELETE_MASK);
		ar_ie->ie_length = 0;
	}

	if (beacon_ie || pr_ie || ar_ie)
		ret = FUNC3(priv,
						   beacon_ie, &priv->beacon_idx,
						   pr_ie, &priv->proberesp_idx,
						   ar_ie, &priv->assocresp_idx);

done:
	FUNC1(gen_ie);
	FUNC1(beacon_ie);
	FUNC1(pr_ie);
	FUNC1(ar_ie);

	return ret;
}