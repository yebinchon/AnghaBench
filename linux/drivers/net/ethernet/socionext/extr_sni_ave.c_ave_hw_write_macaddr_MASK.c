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
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 struct ave_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev,
				 const unsigned char *mac_addr,
				 int reg1, int reg2)
{
	struct ave_private *priv = FUNC0(ndev);

	FUNC1(mac_addr[0] | mac_addr[1] << 8 |
	       mac_addr[2] << 16 | mac_addr[3] << 24, priv->base + reg1);
	FUNC1(mac_addr[4] | mac_addr[5] << 8, priv->base + reg2);
}