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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum mlxsw_reg_tnumt_tunnel_port { ____Placeholder_mlxsw_reg_tnumt_tunnel_port } mlxsw_reg_tnumt_tunnel_port ;
typedef  enum mlxsw_reg_tnumt_record_type { ____Placeholder_mlxsw_reg_tnumt_record_type } mlxsw_reg_tnumt_record_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  tnumt ; 

__attribute__((used)) static inline void FUNC7(char *payload,
					enum mlxsw_reg_tnumt_record_type type,
					enum mlxsw_reg_tnumt_tunnel_port tport,
					u32 underlay_mc_ptr, bool vnext,
					u32 next_underlay_mc_ptr,
					u8 record_size)
{
	FUNC0(tnumt, payload);
	FUNC3(payload, type);
	FUNC4(payload, tport);
	FUNC5(payload, underlay_mc_ptr);
	FUNC6(payload, vnext);
	FUNC1(payload, next_underlay_mc_ptr);
	FUNC2(payload, record_size);
}