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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; int /*<<< orphan*/  local_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PPTB_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pptb ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp_port *mlxsw_sp_port,
				     u8 *prio_tc)
{
	char pptb_pl[MLXSW_REG_PPTB_LEN];
	int i;

	FUNC1(pptb_pl, mlxsw_sp_port->local_port);
	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
		FUNC2(pptb_pl, i, prio_tc[i]);

	return FUNC3(mlxsw_sp_port->mlxsw_sp->core, FUNC0(pptb),
			       pptb_pl);
}