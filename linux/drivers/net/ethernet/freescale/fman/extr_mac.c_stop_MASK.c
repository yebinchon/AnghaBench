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
struct mac_priv_s {int (* disable ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct mac_device {int /*<<< orphan*/  fman_mac; scalar_t__ phy_dev; struct mac_priv_s* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_MODE_RX_AND_TX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mac_device *mac_dev)
{
	struct mac_priv_s *priv = mac_dev->priv;

	if (mac_dev->phy_dev)
		FUNC0(mac_dev->phy_dev);

	return priv->disable(mac_dev->fman_mac, COMM_MODE_RX_AND_TX);
}