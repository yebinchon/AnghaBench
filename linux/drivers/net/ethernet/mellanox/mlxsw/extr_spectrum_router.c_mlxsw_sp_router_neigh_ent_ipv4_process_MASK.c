#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct mlxsw_sp {TYPE_3__* router; TYPE_1__* bus_info; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {TYPE_2__** rifs; } ;
struct TYPE_5__ {struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct neighbour*,int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mlxsw_sp *mlxsw_sp,
						   char *rauhtd_pl,
						   int ent_index)
{
	struct net_device *dev;
	struct neighbour *n;
	__be32 dipn;
	u32 dip;
	u16 rif;

	FUNC2(rauhtd_pl, ent_index, &rif, &dip);

	if (!mlxsw_sp->router->rifs[rif]) {
		FUNC0(mlxsw_sp->bus_info->dev, "Incorrect RIF in neighbour entry\n");
		return;
	}

	dipn = FUNC1(dip);
	dev = mlxsw_sp->router->rifs[rif]->dev;
	n = FUNC4(&arp_tbl, &dipn, dev);
	if (!n)
		return;

	FUNC6(dev, "Updating neighbour with IP=%pI4h\n", &dip);
	FUNC3(n, NULL);
	FUNC5(n);
}