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
typedef  int /*<<< orphan*/  u16 ;
struct mwifiex_private {int bss_mode; int /*<<< orphan*/  adapter; } ;
struct mwifiex_bssdescriptor {scalar_t__ channel; scalar_t__ bss_band; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  NL80211_IFTYPE_ADHOC 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mwifiex_private*,struct mwifiex_bssdescriptor*,int) ; 

int FUNC3(struct mwifiex_private *priv,
					struct mwifiex_bssdescriptor *bss_desc)
{
	int ret = -1;

	if (!bss_desc)
		return -1;

	if ((FUNC1(priv, (u8) bss_desc->bss_band,
			     (u16) bss_desc->channel, 0))) {
		switch (priv->bss_mode) {
		case NL80211_IFTYPE_STATION:
		case NL80211_IFTYPE_ADHOC:
			ret = FUNC2(priv, bss_desc,
							    priv->bss_mode);
			if (ret)
				FUNC0(priv->adapter, ERROR,
					    "Incompatible network settings\n");
			break;
		default:
			ret = 0;
		}
	}

	return ret;
}