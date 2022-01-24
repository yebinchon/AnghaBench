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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct mlxsw_sp_port {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *p)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC3(dev);
	struct sockaddr *addr = p;
	int err;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	err = FUNC2(mlxsw_sp_port, addr->sa_data);
	if (err)
		return err;
	FUNC1(dev->dev_addr, addr->sa_data, dev->addr_len);
	return 0;
}