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
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct mlxsw_sp_port* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *lower_dev, void *data)
{
	struct mlxsw_sp_port **p_mlxsw_sp_port = data;
	int ret = 0;

	if (FUNC0(lower_dev)) {
		*p_mlxsw_sp_port = FUNC1(lower_dev);
		ret = 1;
	}

	return ret;
}