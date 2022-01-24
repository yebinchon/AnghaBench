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
typedef  enum mlxsw_reg_ritr_loopback_ipip_type { ____Placeholder_mlxsw_reg_ritr_loopback_ipip_type } mlxsw_reg_ritr_loopback_ipip_type ;
typedef  enum mlxsw_reg_ritr_loopback_ipip_options { ____Placeholder_mlxsw_reg_ritr_loopback_ipip_options } mlxsw_reg_ritr_loopback_ipip_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(char *payload,
			    enum mlxsw_reg_ritr_loopback_ipip_type ipip_type,
			    enum mlxsw_reg_ritr_loopback_ipip_options options,
			    u16 uvr_id, u16 underlay_rif, u32 gre_key)
{
	FUNC2(payload, ipip_type);
	FUNC1(payload, options);
	FUNC4(payload, uvr_id);
	FUNC3(payload, underlay_rif);
	FUNC0(payload, gre_key);
}