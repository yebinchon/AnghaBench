#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_vr {int /*<<< orphan*/  id; } ;
struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_rif** rifs; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_rif* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_rif* FUNC3 (int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlxsw_sp*,size_t*) ; 
 int FUNC5 (struct mlxsw_sp_rif*,int) ; 

__attribute__((used)) static struct mlxsw_sp_rif *
FUNC6(struct mlxsw_sp *mlxsw_sp, struct mlxsw_sp_vr *vr,
		       struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_rif *ul_rif;
	u16 rif_index;
	int err;

	err = FUNC4(mlxsw_sp, &rif_index);
	if (err) {
		FUNC1(extack, "Exceeded number of supported router interfaces");
		return FUNC0(err);
	}

	ul_rif = FUNC3(sizeof(*ul_rif), rif_index, vr->id, NULL);
	if (!ul_rif)
		return FUNC0(-ENOMEM);

	mlxsw_sp->router->rifs[rif_index] = ul_rif;
	ul_rif->mlxsw_sp = mlxsw_sp;
	err = FUNC5(ul_rif, true);
	if (err)
		goto ul_rif_op_err;

	return ul_rif;

ul_rif_op_err:
	mlxsw_sp->router->rifs[rif_index] = NULL;
	FUNC2(ul_rif);
	return FUNC0(err);
}