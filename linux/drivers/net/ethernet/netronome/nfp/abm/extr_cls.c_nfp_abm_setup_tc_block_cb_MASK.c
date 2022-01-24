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
struct TYPE_2__ {scalar_t__ protocol; int /*<<< orphan*/  extack; } ;
struct tc_cls_u32_offload {int command; int /*<<< orphan*/  knode; TYPE_1__ common; } ;
struct nfp_repr {int /*<<< orphan*/  netdev; struct nfp_abm_link* app_priv; } ;
struct nfp_abm_link {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  TC_CLSU32_DELETE_KNODE 130 
#define  TC_CLSU32_NEW_KNODE 129 
#define  TC_CLSU32_REPLACE_KNODE 128 
 int TC_SETUP_CLSU32 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_abm_link*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nfp_abm_link*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(enum tc_setup_type type,
				     void *type_data, void *cb_priv)
{
	struct tc_cls_u32_offload *cls_u32 = type_data;
	struct nfp_repr *repr = cb_priv;
	struct nfp_abm_link *alink;

	alink = repr->app_priv;

	if (type != TC_SETUP_CLSU32) {
		FUNC0(cls_u32->common.extack,
				   "only offload of u32 classifier supported");
		return -EOPNOTSUPP;
	}
	if (!FUNC4(repr->netdev, &cls_u32->common))
		return -EOPNOTSUPP;

	if (cls_u32->common.protocol != FUNC1(ETH_P_IP) &&
	    cls_u32->common.protocol != FUNC1(ETH_P_IPV6)) {
		FUNC0(cls_u32->common.extack,
				   "only IP and IPv6 supported as filter protocol");
		return -EOPNOTSUPP;
	}

	switch (cls_u32->command) {
	case TC_CLSU32_NEW_KNODE:
	case TC_CLSU32_REPLACE_KNODE:
		return FUNC3(alink, &cls_u32->knode,
						 cls_u32->common.protocol,
						 cls_u32->common.extack);
	case TC_CLSU32_DELETE_KNODE:
		FUNC2(alink, &cls_u32->knode);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}