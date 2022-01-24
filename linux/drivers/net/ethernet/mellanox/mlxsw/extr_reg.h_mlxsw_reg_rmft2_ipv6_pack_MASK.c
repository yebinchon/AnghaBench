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
typedef  int /*<<< orphan*/  u16 ;
struct in6_addr {int dummy; } ;
typedef  enum mlxsw_reg_rmft2_irif_mask { ____Placeholder_mlxsw_reg_rmft2_irif_mask } mlxsw_reg_rmft2_irif_mask ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_RMFT2_TYPE_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC6(char *payload, bool v, u16 offset, u16 virtual_router,
			  enum mlxsw_reg_rmft2_irif_mask irif_mask, u16 irif,
			  struct in6_addr dip6, struct in6_addr dip6_mask,
			  struct in6_addr sip6, struct in6_addr sip6_mask,
			  const char *flexible_action_set)
{
	FUNC0(payload, v, offset, virtual_router,
				    irif_mask, irif, flexible_action_set);
	FUNC5(payload, MLXSW_REG_RMFT2_TYPE_IPV6);
	FUNC2(payload, (void *)&dip6);
	FUNC1(payload, (void *)&dip6_mask);
	FUNC4(payload, (void *)&sip6);
	FUNC3(payload, (void *)&sip6_mask);
}