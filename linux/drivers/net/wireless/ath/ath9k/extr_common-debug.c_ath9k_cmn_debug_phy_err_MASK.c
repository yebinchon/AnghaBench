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
struct dentry {int dummy; } ;
struct ath_rx_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,struct ath_rx_stats*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_phy_err ; 

void FUNC1(struct dentry *debugfs_phy,
			     struct ath_rx_stats *rxstats)
{
	FUNC0("phy_err", 0400, debugfs_phy, rxstats,
			    &fops_phy_err);
}