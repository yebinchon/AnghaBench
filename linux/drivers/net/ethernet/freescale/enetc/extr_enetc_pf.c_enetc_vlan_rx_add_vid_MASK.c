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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct enetc_pf {int /*<<< orphan*/  vlan_ht_filter; int /*<<< orphan*/  active_vlans; } ;
struct enetc_ndev_priv {int /*<<< orphan*/  si; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_pf*,int /*<<< orphan*/ ) ; 
 struct enetc_pf* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct enetc_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_pf*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev, __be16 prot, u16 vid)
{
	struct enetc_ndev_priv *priv = FUNC7(ndev);
	struct enetc_pf *pf = FUNC3(priv->si);
	int idx;

	if (FUNC4(pf, 0))
		FUNC2(pf, 0);

	FUNC0(vid, pf->active_vlans);

	idx = FUNC6(vid);
	if (!FUNC1(idx, pf->vlan_ht_filter))
		FUNC5(pf, false);

	return 0;
}