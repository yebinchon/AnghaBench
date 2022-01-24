#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct i40e_cloud_filter {scalar_t__ n_proto; scalar_t__ tenant_id; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  dst_ipv4; int /*<<< orphan*/ * dst_ipv6; int /*<<< orphan*/  src_mac; int /*<<< orphan*/  dst_mac; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {TYPE_2__ v4; TYPE_1__ raw_v6; } ;
struct i40e_aqc_cloud_filters_element_data {int /*<<< orphan*/  inner_vlan; TYPE_3__ ipaddr; int /*<<< orphan*/  inner_mac; int /*<<< orphan*/  outer_mac; } ;
typedef  int /*<<< orphan*/  ipa ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 int IPV6_MAX_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_aqc_cloud_filters_element_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC8(struct i40e_cloud_filter *filter,
		     struct i40e_aqc_cloud_filters_element_data *cld)
{
	int i, j;
	u32 ipa;

	FUNC6(cld, 0, sizeof(*cld));
	FUNC4(cld->outer_mac, filter->dst_mac);
	FUNC4(cld->inner_mac, filter->src_mac);

	if (filter->n_proto != ETH_P_IP && filter->n_proto != ETH_P_IPV6)
		return;

	if (filter->n_proto == ETH_P_IPV6) {
#define IPV6_MAX_INDEX	(ARRAY_SIZE(filter->dst_ipv6) - 1)
		for (i = 0, j = 0; i < FUNC0(filter->dst_ipv6);
		     i++, j += 2) {
			ipa = FUNC1(filter->dst_ipv6[IPV6_MAX_INDEX - i]);
			ipa = FUNC3(ipa);
			FUNC5(&cld->ipaddr.raw_v6.data[j], &ipa, sizeof(ipa));
		}
	} else {
		ipa = FUNC1(filter->dst_ipv4);
		FUNC5(&cld->ipaddr.v4.data, &ipa, sizeof(ipa));
	}

	cld->inner_vlan = FUNC2(FUNC7(filter->vlan_id));

	/* tenant_id is not supported by FW now, once the support is enabled
	 * fill the cld->tenant_id with cpu_to_le32(filter->tenant_id)
	 */
	if (filter->tenant_id)
		return;
}