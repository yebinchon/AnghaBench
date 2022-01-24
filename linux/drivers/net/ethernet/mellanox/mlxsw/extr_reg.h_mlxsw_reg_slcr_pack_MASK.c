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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_SLCR_PP_GLOBAL ; 
 int /*<<< orphan*/  MLXSW_REG_SLCR_TYPE_CRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slcr ; 

__attribute__((used)) static inline void FUNC5(char *payload, u16 lag_hash, u32 seed)
{
	FUNC0(slcr, payload);
	FUNC2(payload, MLXSW_REG_SLCR_PP_GLOBAL);
	FUNC4(payload, MLXSW_REG_SLCR_TYPE_CRC);
	FUNC1(payload, lag_hash);
	FUNC3(payload, seed);
}