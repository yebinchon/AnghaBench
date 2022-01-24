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
struct wcn36xx {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WCN36XX_DBG_TESTMODE_DUMP ; 
 size_t WCN36XX_TM_ATTR_CMD ; 
 int /*<<< orphan*/  WCN36XX_TM_ATTR_MAX ; 
 unsigned short WCN36XX_TM_CMD_PTT ; 
 unsigned short FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,int) ; 
 int FUNC3 (struct wcn36xx*,struct ieee80211_vif*,struct nlattr**) ; 
 int /*<<< orphan*/  wcn36xx_tm_policy ; 

int FUNC4(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		   void *data, int len)
{
	struct wcn36xx *wcn = hw->priv;
	struct nlattr *tb[WCN36XX_TM_ATTR_MAX + 1];
	int ret = 0;
	unsigned short attr;

	FUNC2(WCN36XX_DBG_TESTMODE_DUMP, "Data:", data, len);
	ret = FUNC1(tb, WCN36XX_TM_ATTR_MAX, data, len,
				   wcn36xx_tm_policy, NULL);
	if (ret)
		return ret;

	if (!tb[WCN36XX_TM_ATTR_CMD])
		return -EINVAL;

	attr = FUNC0(tb[WCN36XX_TM_ATTR_CMD]);

	if (attr != WCN36XX_TM_CMD_PTT)
		return -EOPNOTSUPP;

	return FUNC3(wcn, vif, tb);
}