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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ MLXSW_REG_RAUHTD_IPV4_ENT_PER_REC ; 
 scalar_t__ MLXSW_REG_RAUHTD_REC_MAX_NUM ; 
 scalar_t__ MLXSW_REG_RAUHTD_TYPE_IPV6 ; 
 scalar_t__ FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(char *rauhtd_pl)
{
	u8 num_rec, last_rec_index, num_entries;

	num_rec = FUNC1(rauhtd_pl);
	last_rec_index = num_rec - 1;

	if (num_rec < MLXSW_REG_RAUHTD_REC_MAX_NUM)
		return false;
	if (FUNC2(rauhtd_pl, last_rec_index) ==
	    MLXSW_REG_RAUHTD_TYPE_IPV6)
		return true;

	num_entries = FUNC0(rauhtd_pl,
								last_rec_index);
	if (++num_entries == MLXSW_REG_RAUHTD_IPV4_ENT_PER_REC)
		return true;
	return false;
}