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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct enetc_pf {int total_vfs; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {int errata; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETC_ERR_VLAN_ISOL ; 
 int EOPNOTSUPP ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enetc_pf* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, int vf, u16 vlan,
				u8 qos, __be16 proto)
{
	struct enetc_ndev_priv *priv = FUNC3(ndev);
	struct enetc_pf *pf = FUNC1(priv->si);

	if (priv->si->errata & ENETC_ERR_VLAN_ISOL)
		return -EOPNOTSUPP;

	if (vf >= pf->total_vfs)
		return -EINVAL;

	if (proto != FUNC2(ETH_P_8021Q))
		/* only C-tags supported for now */
		return -EPROTONOSUPPORT;

	FUNC0(&priv->si->hw, vf + 1, vlan, qos);
	return 0;
}