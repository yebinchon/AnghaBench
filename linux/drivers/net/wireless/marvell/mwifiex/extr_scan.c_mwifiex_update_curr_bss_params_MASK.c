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
struct TYPE_2__ {int /*<<< orphan*/  bss_descriptor; } ;
struct mwifiex_private {int /*<<< orphan*/  curr_bcn_buf_lock; TYPE_1__ curr_bss_params; } ;
struct mwifiex_bssdescriptor {struct mwifiex_bssdescriptor* beacon_buf; } ;
struct cfg80211_bss {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_bssdescriptor*) ; 
 struct mwifiex_bssdescriptor* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mwifiex_bssdescriptor*,int) ; 
 int FUNC3 (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 int FUNC4 (struct mwifiex_private*,struct cfg80211_bss*,struct mwifiex_bssdescriptor*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mwifiex_private *priv,
					  struct cfg80211_bss *bss)
{
	struct mwifiex_bssdescriptor *bss_desc;
	int ret;

	/* Allocate and fill new bss descriptor */
	bss_desc = FUNC1(sizeof(struct mwifiex_bssdescriptor), GFP_KERNEL);
	if (!bss_desc)
		return -ENOMEM;

	ret = FUNC4(priv, bss, bss_desc);
	if (ret)
		goto done;

	ret = FUNC3(priv, bss_desc);
	if (ret)
		goto done;

	FUNC6(&priv->curr_bcn_buf_lock);
	/* Make a copy of current BSSID descriptor */
	FUNC2(&priv->curr_bss_params.bss_descriptor, bss_desc,
	       sizeof(priv->curr_bss_params.bss_descriptor));

	/* The contents of beacon_ie will be copied to its own buffer
	 * in mwifiex_save_curr_bcn()
	 */
	FUNC5(priv);
	FUNC7(&priv->curr_bcn_buf_lock);

done:
	/* beacon_ie buffer was allocated in function
	 * mwifiex_fill_new_bss_desc(). Free it now.
	 */
	FUNC0(bss_desc->beacon_buf);
	FUNC0(bss_desc);
	return 0;
}