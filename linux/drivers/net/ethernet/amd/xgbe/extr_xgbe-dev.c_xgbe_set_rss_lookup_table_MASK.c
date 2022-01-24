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
struct xgbe_prv_data {int /*<<< orphan*/ * rss_table; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DMCH ; 
 int /*<<< orphan*/  MAC_RSSDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int FUNC2 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC3(struct xgbe_prv_data *pdata,
				     const u32 *table)
{
	unsigned int i;

	for (i = 0; i < FUNC0(pdata->rss_table); i++)
		FUNC1(pdata->rss_table[i], MAC_RSSDR, DMCH, table[i]);

	return FUNC2(pdata);
}