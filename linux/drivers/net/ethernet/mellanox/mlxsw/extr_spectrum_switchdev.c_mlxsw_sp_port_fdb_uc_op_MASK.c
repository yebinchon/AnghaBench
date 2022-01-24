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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_SFD_REC_ACTION_NOP ; 
 int FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp *mlxsw_sp, u8 local_port,
				   const char *mac, u16 fid, bool adding,
				   bool dynamic)
{
	return FUNC0(mlxsw_sp, local_port, mac, fid, adding,
					 MLXSW_REG_SFD_REC_ACTION_NOP,
					 FUNC1(dynamic));
}