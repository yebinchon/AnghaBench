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
struct mlx5dr_ste_build {int dummy; } ;
struct mlx5dr_match_misc2 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc2 misc2; } ;
struct dr_hw_ste_format {int /*<<< orphan*/ * tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5dr_match_misc2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metadata_reg_c_4 ; 
 int /*<<< orphan*/  metadata_reg_c_5 ; 
 int /*<<< orphan*/  metadata_reg_c_6 ; 
 int /*<<< orphan*/  metadata_reg_c_7 ; 
 int /*<<< orphan*/  register_1 ; 
 int /*<<< orphan*/  register_2_h ; 
 int /*<<< orphan*/  register_2_l ; 
 int /*<<< orphan*/  register_3_h ; 
 int /*<<< orphan*/  register_3_l ; 

__attribute__((used)) static int FUNC1(struct mlx5dr_match_param *value,
				       struct mlx5dr_ste_build *sb,
				       u8 *hw_ste_p)
{
	struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
	struct mlx5dr_match_misc2 *misc2 = &value->misc2;
	u8 *tag = hw_ste->tag;

	FUNC0(register_1, tag, register_2_h, misc2, metadata_reg_c_4);
	FUNC0(register_1, tag, register_2_l, misc2, metadata_reg_c_5);
	FUNC0(register_1, tag, register_3_h, misc2, metadata_reg_c_6);
	FUNC0(register_1, tag, register_3_l, misc2, metadata_reg_c_7);

	return 0;
}