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
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct arc_emac_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  R_ADDRH ; 
 int /*<<< orphan*/  R_ADDRL ; 
 int /*<<< orphan*/  FUNC0 (struct arc_emac_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 struct arc_emac_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC3(ndev);
	unsigned int addr_low, addr_hi;

	addr_low = FUNC2(*(__le32 *)&ndev->dev_addr[0]);
	addr_hi = FUNC1(*(__le16 *)&ndev->dev_addr[4]);

	FUNC0(priv, R_ADDRL, addr_low);
	FUNC0(priv, R_ADDRH, addr_hi);
}