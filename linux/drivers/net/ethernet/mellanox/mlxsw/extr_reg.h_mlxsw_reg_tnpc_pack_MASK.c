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
typedef  enum mlxsw_reg_tnpc_tunnel_port { ____Placeholder_mlxsw_reg_tnpc_tunnel_port } mlxsw_reg_tnpc_tunnel_port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  tnpc ; 

__attribute__((used)) static inline void FUNC4(char *payload,
				       enum mlxsw_reg_tnpc_tunnel_port tport,
				       bool learn_enable)
{
	FUNC0(tnpc, payload);
	FUNC3(payload, tport);
	FUNC1(payload, learn_enable);
	FUNC2(payload, learn_enable);
}