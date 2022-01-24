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
typedef  enum mlxsw_reg_ritr_if_type { ____Placeholder_mlxsw_reg_ritr_if_type } mlxsw_reg_ritr_if_type ;

/* Variables and functions */
 int MLXSW_REG_RITR_RIF_CREATE ; 
 int MLXSW_REG_RITR_RIF_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ritr ; 

__attribute__((used)) static inline void FUNC16(char *payload, bool enable,
				       enum mlxsw_reg_ritr_if_type type,
				       u16 rif, u16 vr_id, u16 mtu)
{
	bool op = enable ? MLXSW_REG_RITR_RIF_CREATE : MLXSW_REG_RITR_RIF_DEL;

	FUNC0(ritr, payload);
	FUNC1(payload, enable);
	FUNC5(payload, 1);
	FUNC9(payload, 1);
	FUNC4(payload, 1);
	FUNC8(payload, 1);
	FUNC14(payload, type);
	FUNC12(payload, op);
	FUNC13(payload, rif);
	FUNC2(payload, 1);
	FUNC6(payload, 1);
	FUNC3(payload, 1);
	FUNC7(payload, 1);
	FUNC10(payload, 1);
	FUNC15(payload, vr_id);
	FUNC11(payload, mtu);
}