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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENETC_RSSHASH_KEY_SIZE ; 
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, u32 *indir, u8 *key,
			  u8 *hfunc)
{
	struct enetc_ndev_priv *priv = FUNC3(ndev);
	struct enetc_hw *hw = &priv->si->hw;
	int err = 0, i;

	/* return hash function */
	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	/* return hash key */
	if (key && hw->port)
		for (i = 0; i < ENETC_RSSHASH_KEY_SIZE / 4; i++)
			((u32 *)key)[i] = FUNC2(hw, FUNC0(i));

	/* return RSS table */
	if (indir)
		err = FUNC1(priv->si, indir, priv->si->num_rss);

	return err;
}