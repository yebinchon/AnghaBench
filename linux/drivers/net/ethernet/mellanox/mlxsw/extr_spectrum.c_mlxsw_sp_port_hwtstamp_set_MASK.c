#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_port {TYPE_2__* mlxsw_sp; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_4__ {TYPE_1__* ptp_ops; } ;
struct TYPE_3__ {int (* hwtstamp_set ) (struct mlxsw_sp_port*,struct hwtstamp_config*) ;} ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int FUNC2 (struct mlxsw_sp_port*,struct hwtstamp_config*) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp_port *mlxsw_sp_port,
				      struct ifreq *ifr)
{
	struct hwtstamp_config config;
	int err;

	if (FUNC0(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	err = mlxsw_sp_port->mlxsw_sp->ptp_ops->hwtstamp_set(mlxsw_sp_port,
							     &config);
	if (err)
		return err;

	if (FUNC1(ifr->ifr_data, &config, sizeof(config)))
		return -EFAULT;

	return 0;
}