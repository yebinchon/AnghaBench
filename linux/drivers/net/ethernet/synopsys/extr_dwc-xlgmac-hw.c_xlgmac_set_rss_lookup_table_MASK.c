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
typedef  int /*<<< orphan*/  u32 ;
struct xlgmac_pdata {int /*<<< orphan*/ * rss_table; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAC_RSSDR_DMCH_LEN ; 
 int /*<<< orphan*/  MAC_RSSDR_DMCH_POS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xlgmac_pdata*) ; 

__attribute__((used)) static int FUNC3(struct xlgmac_pdata *pdata,
				       const u32 *table)
{
	unsigned int i;
	u32 tval;

	for (i = 0; i < FUNC0(pdata->rss_table); i++) {
		tval = table[i];
		pdata->rss_table[i] = FUNC1(
						pdata->rss_table[i],
						MAC_RSSDR_DMCH_POS,
						MAC_RSSDR_DMCH_LEN,
						tval);
	}

	return FUNC2(pdata);
}