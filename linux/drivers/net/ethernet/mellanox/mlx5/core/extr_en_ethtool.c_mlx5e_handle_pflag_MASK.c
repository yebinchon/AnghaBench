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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int pflags; } ;
struct TYPE_4__ {TYPE_3__ params; } ;
struct mlx5e_priv {TYPE_1__ channels; } ;
typedef  enum mlx5e_priv_flag { ____Placeholder_mlx5e_priv_flag } mlx5e_priv_flag ;
struct TYPE_5__ {int (* handler ) (struct net_device*,int) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int) ; 
 TYPE_2__* mlx5e_priv_flags ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,char*,int /*<<< orphan*/ ,int) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			      u32 wanted_flags,
			      enum mlx5e_priv_flag flag)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	bool enable = !!(wanted_flags & FUNC0(flag));
	u32 changes = wanted_flags ^ priv->channels.params.pflags;
	int err;

	if (!(changes & FUNC0(flag)))
		return 0;

	err = mlx5e_priv_flags[flag].handler(netdev, enable);
	if (err) {
		FUNC2(netdev, "%s private flag '%s' failed err %d\n",
			   enable ? "Enable" : "Disable", mlx5e_priv_flags[flag].name, err);
		return err;
	}

	FUNC1(&priv->channels.params, flag, enable);
	return 0;
}