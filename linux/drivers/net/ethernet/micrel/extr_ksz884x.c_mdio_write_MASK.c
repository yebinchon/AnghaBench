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
struct ksz_port {int first_port; int port_cnt; struct ksz_hw* hw; } ;
struct ksz_hw {int dummy; } ;
struct dev_priv {struct ksz_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int,int,int) ; 
 struct dev_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, int phy_id, int reg_num, int val)
{
	struct dev_priv *priv = FUNC1(dev);
	struct ksz_port *port = &priv->port;
	struct ksz_hw *hw = port->hw;
	int i;
	int pi;

	for (i = 0, pi = port->first_port; i < port->port_cnt; i++, pi++)
		FUNC0(hw, pi, reg_num << 1, val);
}