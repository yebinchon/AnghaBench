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
struct xlgmac_pdata {int /*<<< orphan*/ * rss_table; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XLGMAC_RSS_LOOKUP_TABLE_TYPE ; 
 int FUNC1 (struct xlgmac_pdata*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct xlgmac_pdata *pdata)
{
	unsigned int i;
	int ret;

	for (i = 0; i < FUNC0(pdata->rss_table); i++) {
		ret = FUNC1(pdata,
					   XLGMAC_RSS_LOOKUP_TABLE_TYPE, i,
					   pdata->rss_table[i]);
		if (ret)
			return ret;
	}

	return 0;
}