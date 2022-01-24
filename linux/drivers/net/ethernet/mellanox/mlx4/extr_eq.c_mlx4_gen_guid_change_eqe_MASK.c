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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  port; } ;
struct TYPE_6__ {TYPE_2__ port_mgmt_change; } ;
struct mlx4_eqe {TYPE_3__ event; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
typedef  int /*<<< orphan*/  eqe ;
struct TYPE_4__ {int num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_DEV_PMC_SUBTYPE_GUID_INFO ; 
 int /*<<< orphan*/  MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_eqe*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_eqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx4_dev *dev, int slave, u8 port)
{
	struct mlx4_eqe eqe;

	/*don't send if we don't have the that slave */
	if (dev->persist->num_vfs < slave)
		return 0;
	FUNC0(&eqe, 0, sizeof(eqe));

	eqe.type = MLX4_EVENT_TYPE_PORT_MNG_CHG_EVENT;
	eqe.subtype = MLX4_DEV_PMC_SUBTYPE_GUID_INFO;
	eqe.event.port_mgmt_change.port = FUNC2(dev, slave, port);

	return FUNC1(dev, slave, &eqe);
}