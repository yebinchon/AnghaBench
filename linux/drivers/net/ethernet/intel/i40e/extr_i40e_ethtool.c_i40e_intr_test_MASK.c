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
struct i40e_pf {scalar_t__ sw_int_count; int /*<<< orphan*/  hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_2__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_PFINT_DYN_CTL0 ; 
 int I40E_PFINT_DYN_CTL0_INTENA_MASK ; 
 int I40E_PFINT_DYN_CTL0_ITR_INDX_MASK ; 
 int I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK ; 
 int I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK ; 
 int I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK ; 
 int /*<<< orphan*/  hw ; 
 struct i40e_netdev_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u64 FUNC4(struct net_device *netdev, u64 *data)
{
	struct i40e_netdev_priv *np = FUNC0(netdev);
	struct i40e_pf *pf = np->vsi->back;
	u16 swc_old = pf->sw_int_count;

	FUNC1(pf, hw, netdev, "interrupt test\n");
	FUNC3(&pf->hw, I40E_PFINT_DYN_CTL0,
	     (I40E_PFINT_DYN_CTL0_INTENA_MASK |
	      I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK |
	      I40E_PFINT_DYN_CTL0_ITR_INDX_MASK |
	      I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK |
	      I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK));
	FUNC2(1000, 2000);
	*data = (swc_old == pf->sw_int_count);

	return *data;
}