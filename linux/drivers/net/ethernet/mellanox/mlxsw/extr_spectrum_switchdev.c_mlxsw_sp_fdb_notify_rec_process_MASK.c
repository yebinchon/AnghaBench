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
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
#define  MLXSW_REG_SFN_REC_TYPE_AGED_OUT_MAC 133 
#define  MLXSW_REG_SFN_REC_TYPE_AGED_OUT_MAC_LAG 132 
#define  MLXSW_REG_SFN_REC_TYPE_AGED_OUT_UNICAST_TUNNEL 131 
#define  MLXSW_REG_SFN_REC_TYPE_LEARNED_MAC 130 
#define  MLXSW_REG_SFN_REC_TYPE_LEARNED_MAC_LAG 129 
#define  MLXSW_REG_SFN_REC_TYPE_LEARNED_UNICAST_TUNNEL 128 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,char*,int,int) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sp *mlxsw_sp,
					    char *sfn_pl, int rec_index)
{
	switch (FUNC0(sfn_pl, rec_index)) {
	case MLXSW_REG_SFN_REC_TYPE_LEARNED_MAC:
		FUNC2(mlxsw_sp, sfn_pl,
						rec_index, true);
		break;
	case MLXSW_REG_SFN_REC_TYPE_AGED_OUT_MAC:
		FUNC2(mlxsw_sp, sfn_pl,
						rec_index, false);
		break;
	case MLXSW_REG_SFN_REC_TYPE_LEARNED_MAC_LAG:
		FUNC1(mlxsw_sp, sfn_pl,
						    rec_index, true);
		break;
	case MLXSW_REG_SFN_REC_TYPE_AGED_OUT_MAC_LAG:
		FUNC1(mlxsw_sp, sfn_pl,
						    rec_index, false);
		break;
	case MLXSW_REG_SFN_REC_TYPE_LEARNED_UNICAST_TUNNEL:
		FUNC3(mlxsw_sp, sfn_pl,
							  rec_index, true);
		break;
	case MLXSW_REG_SFN_REC_TYPE_AGED_OUT_UNICAST_TUNNEL:
		FUNC3(mlxsw_sp, sfn_pl,
							  rec_index, false);
		break;
	}
}