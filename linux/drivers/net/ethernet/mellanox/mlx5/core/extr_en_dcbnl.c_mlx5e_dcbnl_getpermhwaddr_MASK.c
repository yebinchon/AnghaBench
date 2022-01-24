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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
				      u8 *perm_addr)
{
	struct mlx5e_priv *priv = FUNC2(netdev);

	if (!perm_addr)
		return;

	FUNC0(perm_addr, 0xff, MAX_ADDR_LEN);

	FUNC1(priv->mdev, perm_addr);
}