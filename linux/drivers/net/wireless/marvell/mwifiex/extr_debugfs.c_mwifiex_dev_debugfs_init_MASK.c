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
struct mwifiex_private {int /*<<< orphan*/  dfs_dev_dir; TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  debug_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  getlog ; 
 int /*<<< orphan*/  histogram ; 
 int /*<<< orphan*/  hscfg ; 
 int /*<<< orphan*/  info ; 
 int /*<<< orphan*/  memrw ; 
 int /*<<< orphan*/  mwifiex_dfs_dir ; 
 int /*<<< orphan*/  rdeeprom ; 
 int /*<<< orphan*/  regrdwr ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  timeshare_coex ; 
 int /*<<< orphan*/  verext ; 

void
FUNC2(struct mwifiex_private *priv)
{
	if (!mwifiex_dfs_dir || !priv)
		return;

	priv->dfs_dev_dir = FUNC1(priv->netdev->name,
					       mwifiex_dfs_dir);

	if (!priv->dfs_dev_dir)
		return;

	FUNC0(info);
	FUNC0(debug);
	FUNC0(getlog);
	FUNC0(regrdwr);
	FUNC0(rdeeprom);

	FUNC0(memrw);
	FUNC0(hscfg);
	FUNC0(histogram);
	FUNC0(debug_mask);
	FUNC0(timeshare_coex);
	FUNC0(reset);
	FUNC0(verext);
}