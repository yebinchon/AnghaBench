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
typedef  int /*<<< orphan*/  u64 ;
struct ethtool_flow_ext {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPAA2_ETH_DIST_ETHDST ; 
 int /*<<< orphan*/  NET_PROT_ETH ; 
 int /*<<< orphan*/  NH_FLD_ETH_DA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ethtool_flow_ext *ext_value,
			     struct ethtool_flow_ext *ext_mask,
			     void *key, void *mask, u64 *fields)
{
	int off;

	if (!FUNC2(ext_mask->h_dest)) {
		off = FUNC0(NET_PROT_ETH, NH_FLD_ETH_DA);
		FUNC1(key + off, ext_value->h_dest);
		FUNC1(mask + off, ext_mask->h_dest);
		*fields |= DPAA2_ETH_DIST_ETHDST;
	}

	return 0;
}