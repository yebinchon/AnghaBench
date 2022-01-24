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
typedef  int /*<<< orphan*/  u64 ;
struct mlxsw_reg_info {int /*<<< orphan*/  id; } ;
typedef  enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;

/* Variables and functions */
 int MLXSW_CORE_REG_ACCESS_TYPE_QUERY ; 
 int /*<<< orphan*/  MLXSW_EMAD_OP_TLV_CLASS_REG_ACCESS ; 
 int /*<<< orphan*/  MLXSW_EMAD_OP_TLV_LEN ; 
 int /*<<< orphan*/  MLXSW_EMAD_OP_TLV_METHOD_QUERY ; 
 int /*<<< orphan*/  MLXSW_EMAD_OP_TLV_METHOD_WRITE ; 
 int /*<<< orphan*/  MLXSW_EMAD_OP_TLV_REQUEST ; 
 int /*<<< orphan*/  MLXSW_EMAD_TLV_TYPE_OP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(char *op_tlv,
				   const struct mlxsw_reg_info *reg,
				   enum mlxsw_core_reg_access_type type,
				   u64 tid)
{
	FUNC8(op_tlv, MLXSW_EMAD_TLV_TYPE_OP);
	FUNC2(op_tlv, MLXSW_EMAD_OP_TLV_LEN);
	FUNC1(op_tlv, 0);
	FUNC6(op_tlv, 0);
	FUNC5(op_tlv, reg->id);
	FUNC4(op_tlv, MLXSW_EMAD_OP_TLV_REQUEST);
	if (type == MLXSW_CORE_REG_ACCESS_TYPE_QUERY)
		FUNC3(op_tlv,
					     MLXSW_EMAD_OP_TLV_METHOD_QUERY);
	else
		FUNC3(op_tlv,
					     MLXSW_EMAD_OP_TLV_METHOD_WRITE);
	FUNC0(op_tlv,
				    MLXSW_EMAD_OP_TLV_CLASS_REG_ACCESS);
	FUNC7(op_tlv, tid);
}