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
struct devlink_port {int dummy; } ;
struct mlx4_port_info {struct devlink_port devlink_port; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct mlx4_dev*) ; 

struct devlink_port *FUNC1(struct mlx4_dev *dev, int port)
{
	struct mlx4_port_info *info = &FUNC0(dev)->port[port];

	return &info->devlink_port;
}