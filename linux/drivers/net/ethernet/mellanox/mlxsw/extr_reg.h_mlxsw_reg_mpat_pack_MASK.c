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
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_mpat_span_type { ____Placeholder_mlxsw_reg_mpat_span_type } mlxsw_reg_mpat_span_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpat ; 

__attribute__((used)) static inline void FUNC7(char *payload, u8 pa_id,
				       u16 system_port, bool e,
				       enum mlxsw_reg_mpat_span_type span_type)
{
	FUNC0(mpat, payload);
	FUNC3(payload, pa_id);
	FUNC6(payload, system_port);
	FUNC2(payload, e);
	FUNC4(payload, 1);
	FUNC1(payload, 1);
	FUNC5(payload, span_type);
}