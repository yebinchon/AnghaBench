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
struct net_device {unsigned char* dev_addr; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_en_priv*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_priv*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *addr)
{
	struct mlx4_en_priv *priv = FUNC6(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct sockaddr *saddr = addr;
	unsigned char new_mac[ETH_ALEN + 2];
	int err;

	if (!FUNC0(saddr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC4(&mdev->state_lock);
	FUNC1(new_mac, saddr->sa_data, ETH_ALEN);
	err = FUNC2(priv, new_mac);
	if (err)
		goto out;

	FUNC1(dev->dev_addr, saddr->sa_data, ETH_ALEN);
	FUNC3(priv, new_mac);
out:
	FUNC5(&mdev->state_lock);

	return err;
}