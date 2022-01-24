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
typedef  char u8 ;
typedef  scalar_t__ u32 ;
struct hnae3_handle {int flags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
 scalar_t__ ETH_SS_STATS ; 
 scalar_t__ ETH_SS_TEST ; 
 size_t HNAE3_LOOP_APP ; 
 size_t HNAE3_LOOP_PARALLEL_SERDES ; 
 size_t HNAE3_LOOP_PHY ; 
 size_t HNAE3_LOOP_SERIAL_SERDES ; 
 int HNAE3_SUPPORT_APP_LOOPBACK ; 
 int HNAE3_SUPPORT_PHY_LOOPBACK ; 
 int HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK ; 
 int HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK ; 
 int /*<<< orphan*/  g_mac_stats_string ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC2 (struct hnae3_handle*,char*) ; 
 int /*<<< orphan*/ * hns3_nic_test_strs ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hnae3_handle *handle, u32 stringset,
			      u8 *data)
{
	u8 *p = (char *)data;
	int size;

	if (stringset == ETH_SS_STATS) {
		size = FUNC0(g_mac_stats_string);
		p = FUNC1(stringset, g_mac_stats_string,
					   size, p);
		p = FUNC2(handle, p);
	} else if (stringset == ETH_SS_TEST) {
		if (handle->flags & HNAE3_SUPPORT_APP_LOOPBACK) {
			FUNC3(p, hns3_nic_test_strs[HNAE3_LOOP_APP],
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}
		if (handle->flags & HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK) {
			FUNC3(p, hns3_nic_test_strs[HNAE3_LOOP_SERIAL_SERDES],
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}
		if (handle->flags & HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK) {
			FUNC3(p,
			       hns3_nic_test_strs[HNAE3_LOOP_PARALLEL_SERDES],
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}
		if (handle->flags & HNAE3_SUPPORT_PHY_LOOPBACK) {
			FUNC3(p, hns3_nic_test_strs[HNAE3_LOOP_PHY],
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}
	}
}