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
typedef  enum mlxsw_port_admin_status { ____Placeholder_mlxsw_port_admin_status } mlxsw_port_admin_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  paos ; 

__attribute__((used)) static inline void FUNC8(char *payload, u8 local_port,
				       enum mlxsw_port_admin_status status)
{
	FUNC0(paos, payload);
	FUNC7(payload, 0);
	FUNC5(payload, local_port);
	FUNC1(payload, status);
	FUNC6(payload, 0);
	FUNC2(payload, 1);
	FUNC4(payload, 1);
	FUNC3(payload, 1);
}