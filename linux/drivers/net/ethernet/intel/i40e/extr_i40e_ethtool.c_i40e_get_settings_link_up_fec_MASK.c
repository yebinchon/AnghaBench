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
typedef  int u8 ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEC_BASER ; 
 int /*<<< orphan*/  FEC_NONE ; 
 int /*<<< orphan*/  FEC_RS ; 
 int I40E_AQ_SET_FEC_AUTO ; 
 int I40E_AQ_SET_FEC_REQUEST_KR ; 
 int I40E_AQ_SET_FEC_REQUEST_RS ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static void FUNC1(u8 req_fec_info,
					  struct ethtool_link_ksettings *ks)
{
	FUNC0(ks, supported, FEC_NONE);
	FUNC0(ks, supported, FEC_RS);
	FUNC0(ks, supported, FEC_BASER);

	if (I40E_AQ_SET_FEC_REQUEST_RS & req_fec_info) {
		FUNC0(ks, advertising, FEC_RS);
	} else if (I40E_AQ_SET_FEC_REQUEST_KR & req_fec_info) {
		FUNC0(ks, advertising,
						     FEC_BASER);
	} else {
		FUNC0(ks, advertising,
						     FEC_NONE);
		if (I40E_AQ_SET_FEC_AUTO & req_fec_info) {
			FUNC0(ks, advertising,
							     FEC_RS);
			FUNC0(ks, advertising,
							     FEC_BASER);
		}
	}
}