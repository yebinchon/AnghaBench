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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlx5e_priv {int /*<<< orphan*/  set_rx_mode_work; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, void *addr)
{
	struct mlx5e_priv *priv = FUNC2(netdev);
	struct sockaddr *saddr = addr;

	if (!FUNC1(saddr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC3(netdev);
	FUNC0(netdev->dev_addr, saddr->sa_data);
	FUNC4(netdev);

	FUNC5(priv->wq, &priv->set_rx_mode_work);

	return 0;
}