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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_afa_vlan_vlan_tag_cmd { ____Placeholder_mlxsw_afa_vlan_vlan_tag_cmd } mlxsw_afa_vlan_vlan_tag_cmd ;
typedef  enum mlxsw_afa_vlan_cmd { ____Placeholder_mlxsw_afa_vlan_cmd } mlxsw_afa_vlan_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static inline void
FUNC7(char *payload,
		    enum mlxsw_afa_vlan_vlan_tag_cmd vlan_tag_cmd,
		    enum mlxsw_afa_vlan_cmd vid_cmd, u16 vid,
		    enum mlxsw_afa_vlan_cmd pcp_cmd, u8 pcp,
		    enum mlxsw_afa_vlan_cmd ethertype_cmd, u8 ethertype)
{
	FUNC6(payload, vlan_tag_cmd);
	FUNC4(payload, vid_cmd);
	FUNC5(payload, vid);
	FUNC2(payload, pcp_cmd);
	FUNC3(payload, pcp);
	FUNC0(payload, ethertype_cmd);
	FUNC1(payload, ethertype);
}