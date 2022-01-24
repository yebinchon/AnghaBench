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

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SFD_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_SFD_REC_ACTION_NOP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  sfd ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp *mlxsw_sp, const char *addr,
				u16 fid, u16 mid_idx, bool adding)
{
	char *sfd_pl;
	u8 num_rec;
	int err;

	sfd_pl = FUNC2(MLXSW_REG_SFD_LEN, GFP_KERNEL);
	if (!sfd_pl)
		return -ENOMEM;

	FUNC5(sfd_pl, FUNC7(adding), 0);
	FUNC3(sfd_pl, 0, addr, fid,
			      MLXSW_REG_SFD_REC_ACTION_NOP, mid_idx);
	num_rec = FUNC4(sfd_pl);
	err = FUNC6(mlxsw_sp->core, FUNC0(sfd), sfd_pl);
	if (err)
		goto out;

	if (num_rec != FUNC4(sfd_pl))
		err = -EBUSY;

out:
	FUNC1(sfd_pl);
	return err;
}