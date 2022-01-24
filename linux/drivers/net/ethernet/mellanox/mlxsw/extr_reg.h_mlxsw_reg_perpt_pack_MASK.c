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
typedef  enum mlxsw_reg_perpt_key_size { ____Placeholder_mlxsw_reg_perpt_key_size } mlxsw_reg_perpt_key_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  perpt ; 

__attribute__((used)) static inline void
FUNC10(char *payload, u8 erpt_bank, u8 erpt_index,
		     enum mlxsw_reg_perpt_key_size key_size, u8 erp_id,
		     u8 erpt_base_bank, u8 erpt_base_index, u8 erp_index,
		     char *mask)
{
	FUNC0(perpt, payload);
	FUNC4(payload, erpt_bank);
	FUNC7(payload, erpt_index);
	FUNC8(payload, key_size);
	FUNC1(payload, false);
	FUNC2(payload, erp_id);
	FUNC5(payload, erpt_base_bank);
	FUNC6(payload, erpt_base_index);
	FUNC3(payload, erp_index);
	FUNC9(payload, mask);
}