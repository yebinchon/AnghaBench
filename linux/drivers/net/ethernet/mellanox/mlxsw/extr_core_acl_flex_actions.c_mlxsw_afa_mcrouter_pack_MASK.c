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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_afa_mrouter_vrmid { ____Placeholder_mlxsw_afa_mrouter_vrmid } mlxsw_afa_mrouter_vrmid ;
typedef  enum mlxsw_afa_mcrouter_rpf_action { ____Placeholder_mlxsw_afa_mcrouter_rpf_action } mlxsw_afa_mcrouter_rpf_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static inline void
FUNC5(char *payload,
			enum mlxsw_afa_mcrouter_rpf_action rpf_action,
			u16 expected_irif, u16 min_mtu,
			enum mlxsw_afa_mrouter_vrmid vrmid, u32 rigr_rmid_index)

{
	FUNC3(payload, rpf_action);
	FUNC0(payload, expected_irif);
	FUNC1(payload, min_mtu);
	FUNC4(payload, vrmid);
	FUNC2(payload, rigr_rmid_index);
}