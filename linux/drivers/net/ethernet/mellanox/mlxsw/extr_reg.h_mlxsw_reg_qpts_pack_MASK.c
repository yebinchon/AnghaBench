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
typedef  enum mlxsw_reg_qpts_trust_state { ____Placeholder_mlxsw_reg_qpts_trust_state } mlxsw_reg_qpts_trust_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  qpts ; 

__attribute__((used)) static inline void FUNC3(char *payload, u8 local_port,
				       enum mlxsw_reg_qpts_trust_state ts)
{
	FUNC0(qpts, payload);

	FUNC1(payload, local_port);
	FUNC2(payload, ts);
}