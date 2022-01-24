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
typedef  enum mlxsw_reg_tngcr_type { ____Placeholder_mlxsw_reg_tngcr_type } mlxsw_reg_tngcr_type ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_TNGCR_FL_NO_COPY ; 
 int /*<<< orphan*/  MLXSW_REG_TNGCR_UDP_SPORT_HASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  tngcr ; 

__attribute__((used)) static inline void FUNC11(char *payload,
					enum mlxsw_reg_tngcr_type type,
					bool valid, u8 ttl)
{
	FUNC0(tngcr, payload);
	FUNC10(payload, type);
	FUNC9(payload, valid);
	FUNC6(payload, ttl);
	FUNC5(payload, ttl);
	FUNC1(payload, MLXSW_REG_TNGCR_FL_NO_COPY);
	FUNC2(payload, 0);
	FUNC8(payload,
					       MLXSW_REG_TNGCR_UDP_SPORT_HASH);
	FUNC7(payload, 0);
	FUNC4(payload, 1);
	FUNC3(payload, 1);
}