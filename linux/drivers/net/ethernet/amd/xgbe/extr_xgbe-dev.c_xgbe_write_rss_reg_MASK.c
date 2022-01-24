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
struct xgbe_prv_data {int /*<<< orphan*/  rss_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRT ; 
 int /*<<< orphan*/  CT ; 
 int EBUSY ; 
 int /*<<< orphan*/  MAC_RSSAR ; 
 int /*<<< orphan*/  MAC_RSSDR ; 
 int /*<<< orphan*/  OB ; 
 int /*<<< orphan*/  RSSIA ; 
 scalar_t__ FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct xgbe_prv_data *pdata, unsigned int type,
			      unsigned int index, unsigned int val)
{
	unsigned int wait;
	int ret = 0;

	FUNC3(&pdata->rss_mutex);

	if (FUNC0(pdata, MAC_RSSAR, OB)) {
		ret = -EBUSY;
		goto unlock;
	}

	FUNC1(pdata, MAC_RSSDR, val);

	FUNC2(pdata, MAC_RSSAR, RSSIA, index);
	FUNC2(pdata, MAC_RSSAR, ADDRT, type);
	FUNC2(pdata, MAC_RSSAR, CT, 0);
	FUNC2(pdata, MAC_RSSAR, OB, 1);

	wait = 1000;
	while (wait--) {
		if (!FUNC0(pdata, MAC_RSSAR, OB))
			goto unlock;

		FUNC5(1000, 1500);
	}

	ret = -EBUSY;

unlock:
	FUNC4(&pdata->rss_mutex);

	return ret;
}