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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_sfd_rec_policy { ____Placeholder_mlxsw_reg_sfd_rec_policy } mlxsw_reg_sfd_rec_policy ;
typedef  enum mlxsw_reg_sfd_rec_action { ____Placeholder_mlxsw_reg_sfd_rec_action } mlxsw_reg_sfd_rec_action ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SFD_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  sfd ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp *mlxsw_sp, u8 local_port,
				     const char *mac, u16 fid, bool adding,
				     enum mlxsw_reg_sfd_rec_action action,
				     enum mlxsw_reg_sfd_rec_policy policy)
{
	char *sfd_pl;
	u8 num_rec;
	int err;

	sfd_pl = FUNC2(MLXSW_REG_SFD_LEN, GFP_KERNEL);
	if (!sfd_pl)
		return -ENOMEM;

	FUNC4(sfd_pl, FUNC7(adding), 0);
	FUNC5(sfd_pl, 0, policy, mac, fid, action, local_port);
	num_rec = FUNC3(sfd_pl);
	err = FUNC6(mlxsw_sp->core, FUNC0(sfd), sfd_pl);
	if (err)
		goto out;

	if (num_rec != FUNC3(sfd_pl))
		err = -EBUSY;

out:
	FUNC1(sfd_pl);
	return err;
}