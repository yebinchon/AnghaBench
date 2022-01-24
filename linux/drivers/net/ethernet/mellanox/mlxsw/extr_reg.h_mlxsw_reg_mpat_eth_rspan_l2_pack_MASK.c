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
typedef  enum mlxsw_reg_mpat_eth_rspan_version { ____Placeholder_mlxsw_reg_mpat_eth_rspan_version } mlxsw_reg_mpat_eth_rspan_version ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static inline void
FUNC3(char *payload,
				 enum mlxsw_reg_mpat_eth_rspan_version version,
				 const char *mac,
				 bool tp)
{
	FUNC2(payload, version);
	FUNC0(payload, mac);
	FUNC1(payload, tp);
}