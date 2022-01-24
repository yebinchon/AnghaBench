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
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ice_pf {scalar_t__ sw_int_count; int /*<<< orphan*/  oicr_idx; int /*<<< orphan*/  hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct ice_pf* back; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GLINT_DYN_CTL_INTENA_MSK_M ; 
 int GLINT_DYN_CTL_SWINT_TRIG_M ; 
 int GLINT_DYN_CTL_SW_ITR_INDX_M ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct ice_netdev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u64 FUNC5(struct net_device *netdev)
{
	struct ice_netdev_priv *np = FUNC2(netdev);
	struct ice_pf *pf = np->vsi->back;
	u16 swic_old = pf->sw_int_count;

	FUNC1(netdev, "interrupt test\n");

	FUNC4(&pf->hw, FUNC0(pf->oicr_idx),
	     GLINT_DYN_CTL_SW_ITR_INDX_M |
	     GLINT_DYN_CTL_INTENA_MSK_M |
	     GLINT_DYN_CTL_SWINT_TRIG_M);

	FUNC3(1000, 2000);
	return (swic_old == pf->sw_int_count);
}