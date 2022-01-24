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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  port; scalar_t__ port_up; int /*<<< orphan*/  active_vlans; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; scalar_t__ device_up; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mlx4_en_priv*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				   __be16 proto, u16 vid)
{
	struct mlx4_en_priv *priv = FUNC6(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	int err;
	int idx;

	FUNC0(HW, priv, "adding VLAN:%d\n", vid);

	FUNC7(vid, priv->active_vlans);

	/* Add VID to port VLAN filter */
	FUNC4(&mdev->state_lock);
	if (mdev->device_up && priv->port_up) {
		err = FUNC2(mdev->dev, priv);
		if (err) {
			FUNC1(priv, "Failed configuring VLAN filter\n");
			goto out;
		}
	}
	err = FUNC3(mdev->dev, priv->port, vid, &idx);
	if (err)
		FUNC0(HW, priv, "Failed adding vlan %d\n", vid);

out:
	FUNC5(&mdev->state_lock);
	return err;
}