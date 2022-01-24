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
struct xgbe_prv_data {int /*<<< orphan*/  rss_table; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xgbe_prv_data* FUNC1 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC2(struct net_device *netdev)
{
	struct xgbe_prv_data *pdata = FUNC1(netdev);

	return FUNC0(pdata->rss_table);
}