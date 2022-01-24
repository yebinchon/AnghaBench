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
typedef  int /*<<< orphan*/  u64 ;
struct netdev_phys_item_id {int id_len; int /*<<< orphan*/  id; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
typedef  int /*<<< orphan*/  parent_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
					 struct netdev_phys_item_id *ppid)
{
	struct mlx5e_priv *priv;
	u64 parent_id;

	priv = FUNC2(dev);

	parent_id = FUNC1(priv->mdev);
	ppid->id_len = sizeof(parent_id);
	FUNC0(ppid->id, &parent_id, sizeof(parent_id));
}