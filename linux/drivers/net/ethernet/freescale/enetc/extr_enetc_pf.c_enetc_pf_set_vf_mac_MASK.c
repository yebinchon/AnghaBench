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
struct net_device {int dummy; } ;
struct enetc_vf_state {int /*<<< orphan*/  flags; } ;
struct enetc_pf {int total_vfs; struct enetc_vf_state* vf_state; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENETC_VF_FLAG_PF_SET_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct enetc_pf* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct enetc_ndev_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, int vf, u8 *mac)
{
	struct enetc_ndev_priv *priv = FUNC3(ndev);
	struct enetc_pf *pf = FUNC1(priv->si);
	struct enetc_vf_state *vf_state;

	if (vf >= pf->total_vfs)
		return -EINVAL;

	if (!FUNC2(mac))
		return -EADDRNOTAVAIL;

	vf_state = &pf->vf_state[vf];
	vf_state->flags |= ENETC_VF_FLAG_PF_SET_MAC;
	FUNC0(&priv->si->hw, vf + 1, mac);
	return 0;
}