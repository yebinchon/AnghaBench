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
struct nixge_priv {int dummy; } ;
struct net_device {int* dev_addr; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  NIXGE_REG_MAC_LSB ; 
 int /*<<< orphan*/  NIXGE_REG_MAC_MSB ; 
 struct nixge_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nixge_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC2(struct net_device *ndev)
{
	struct nixge_priv *priv = FUNC0(ndev);

	FUNC1(priv, NIXGE_REG_MAC_LSB,
			     (ndev->dev_addr[2]) << 24 |
			     (ndev->dev_addr[3] << 16) |
			     (ndev->dev_addr[4] << 8) |
			     (ndev->dev_addr[5] << 0));

	FUNC1(priv, NIXGE_REG_MAC_MSB,
			     (ndev->dev_addr[1] | (ndev->dev_addr[0] << 8)));

	return 0;
}