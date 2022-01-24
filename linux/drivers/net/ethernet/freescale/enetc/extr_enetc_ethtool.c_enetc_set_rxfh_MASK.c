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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
struct enetc_hw {scalar_t__ port; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_rss; struct enetc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enetc_hw*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, const u32 *indir,
			  const u8 *key, const u8 hfunc)
{
	struct enetc_ndev_priv *priv = FUNC2(ndev);
	struct enetc_hw *hw = &priv->si->hw;
	int err = 0;

	/* set hash key, if PF */
	if (key && hw->port)
		FUNC0(hw, key);

	/* set RSS table */
	if (indir)
		err = FUNC1(priv->si, indir, priv->si->num_rss);

	return err;
}