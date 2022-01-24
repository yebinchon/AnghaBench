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

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_MPAT_ETH_RSPAN_PROTOCOL_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(char *payload, u8 ttl,
				      const char *smac,
				      u32 sip, u32 dip)
{
	FUNC4(payload, ttl);
	FUNC3(payload, smac);
	FUNC1(payload,
				    MLXSW_REG_MPAT_ETH_RSPAN_PROTOCOL_IPV4);
	FUNC2(payload, sip);
	FUNC0(payload, dip);
}