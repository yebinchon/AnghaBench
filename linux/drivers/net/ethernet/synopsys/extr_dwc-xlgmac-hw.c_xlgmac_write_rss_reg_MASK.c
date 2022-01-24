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
typedef  int u32 ;
struct xlgmac_pdata {int /*<<< orphan*/  rss_mutex; scalar_t__ mac_regs; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ MAC_RSSAR ; 
 int /*<<< orphan*/  MAC_RSSAR_ADDRT_LEN ; 
 int /*<<< orphan*/  MAC_RSSAR_ADDRT_POS ; 
 int /*<<< orphan*/  MAC_RSSAR_CT_LEN ; 
 int /*<<< orphan*/  MAC_RSSAR_CT_POS ; 
 int /*<<< orphan*/  MAC_RSSAR_OB_LEN ; 
 int /*<<< orphan*/  MAC_RSSAR_OB_POS ; 
 int /*<<< orphan*/  MAC_RSSAR_RSSIA_LEN ; 
 int /*<<< orphan*/  MAC_RSSAR_RSSIA_POS ; 
 scalar_t__ MAC_RSSDR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct xlgmac_pdata *pdata, unsigned int type,
				unsigned int index, unsigned int val)
{
	unsigned int wait;
	int ret = 0;
	u32 regval;

	FUNC2(&pdata->rss_mutex);

	regval = FUNC0(FUNC4(pdata->mac_regs + MAC_RSSAR),
				     MAC_RSSAR_OB_POS, MAC_RSSAR_OB_LEN);
	if (regval) {
		ret = -EBUSY;
		goto unlock;
	}

	FUNC6(val, pdata->mac_regs + MAC_RSSDR);

	regval = FUNC4(pdata->mac_regs + MAC_RSSAR);
	regval = FUNC1(regval, MAC_RSSAR_RSSIA_POS,
				     MAC_RSSAR_RSSIA_LEN, index);
	regval = FUNC1(regval, MAC_RSSAR_ADDRT_POS,
				     MAC_RSSAR_ADDRT_LEN, type);
	regval = FUNC1(regval, MAC_RSSAR_CT_POS,
				     MAC_RSSAR_CT_LEN, 0);
	regval = FUNC1(regval, MAC_RSSAR_OB_POS,
				     MAC_RSSAR_OB_LEN, 1);
	FUNC6(regval, pdata->mac_regs + MAC_RSSAR);

	wait = 1000;
	while (wait--) {
		regval = FUNC0(FUNC4(pdata->mac_regs + MAC_RSSAR),
					     MAC_RSSAR_OB_POS,
					     MAC_RSSAR_OB_LEN);
		if (!regval)
			goto unlock;

		FUNC5(1000, 1500);
	}

	ret = -EBUSY;

unlock:
	FUNC3(&pdata->rss_mutex);

	return ret;
}