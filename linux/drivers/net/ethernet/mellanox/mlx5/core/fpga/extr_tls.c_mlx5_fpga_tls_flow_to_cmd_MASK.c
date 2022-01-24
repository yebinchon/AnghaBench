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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  direction_sx ; 
 int /*<<< orphan*/  ipv6 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_port ; 
 int /*<<< orphan*/  tls_cmd ; 
 int /*<<< orphan*/  tls_flow ; 

__attribute__((used)) static void FUNC5(void *flow, void *cmd)
{
	FUNC4(FUNC0(tls_cmd, cmd, src_port), flow,
	       FUNC1(tls_flow, ipv6));

	FUNC3(tls_cmd, cmd, ipv6, FUNC2(tls_flow, flow, ipv6));
	FUNC3(tls_cmd, cmd, direction_sx,
		 FUNC2(tls_flow, flow, direction_sx));
}