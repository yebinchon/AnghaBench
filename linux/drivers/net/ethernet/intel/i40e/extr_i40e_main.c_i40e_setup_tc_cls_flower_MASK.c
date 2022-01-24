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
struct i40e_vsi {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct flow_cls_offload {int command; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FLOW_CLS_DESTROY 130 
#define  FLOW_CLS_REPLACE 129 
#define  FLOW_CLS_STATS 128 
 int FUNC0 (struct i40e_vsi*,struct flow_cls_offload*) ; 
 int FUNC1 (struct i40e_vsi*,struct flow_cls_offload*) ; 

__attribute__((used)) static int FUNC2(struct i40e_netdev_priv *np,
				    struct flow_cls_offload *cls_flower)
{
	struct i40e_vsi *vsi = np->vsi;

	switch (cls_flower->command) {
	case FLOW_CLS_REPLACE:
		return FUNC0(vsi, cls_flower);
	case FLOW_CLS_DESTROY:
		return FUNC1(vsi, cls_flower);
	case FLOW_CLS_STATS:
		return -EOPNOTSUPP;
	default:
		return -EOPNOTSUPP;
	}
}