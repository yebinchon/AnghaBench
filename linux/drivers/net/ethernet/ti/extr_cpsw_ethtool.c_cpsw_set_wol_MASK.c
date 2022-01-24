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
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {TYPE_1__* slaves; } ;
struct TYPE_2__ {scalar_t__ phy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct cpsw_common*,struct cpsw_priv*) ; 
 struct cpsw_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__,struct ethtool_wolinfo*) ; 

int FUNC3(struct net_device *ndev, struct ethtool_wolinfo *wol)
{
	struct cpsw_priv *priv = FUNC1(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int slave_no = FUNC0(cpsw, priv);

	if (cpsw->slaves[slave_no].phy)
		return FUNC2(cpsw->slaves[slave_no].phy, wol);
	else
		return -EOPNOTSUPP;
}