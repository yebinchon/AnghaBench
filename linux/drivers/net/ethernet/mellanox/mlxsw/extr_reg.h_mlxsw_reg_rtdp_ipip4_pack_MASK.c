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
typedef  enum mlxsw_reg_rtdp_ipip_sip_check { ____Placeholder_mlxsw_reg_rtdp_ipip_sip_check } mlxsw_reg_rtdp_ipip_sip_check ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 

__attribute__((used)) static inline void
FUNC6(char *payload, u16 irif,
			  enum mlxsw_reg_rtdp_ipip_sip_check sip_check,
			  unsigned int type_check, bool gre_key_check,
			  u32 ipv4_usip, u32 expected_gre_key)
{
	FUNC3(payload, irif);
	FUNC4(payload, sip_check);
	FUNC5(payload, type_check);
	FUNC1(payload, gre_key_check);
	FUNC2(payload, ipv4_usip);
	FUNC0(payload, expected_gre_key);
}