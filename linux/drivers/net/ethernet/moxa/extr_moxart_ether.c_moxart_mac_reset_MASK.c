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
struct moxart_mac_priv_t {int reg_maccr; scalar_t__ base; } ;

/* Variables and functions */
 int CRC_APD ; 
 int FULLDUP ; 
 scalar_t__ REG_INTERRUPT_MASK ; 
 scalar_t__ REG_MAC_CTRL ; 
 int RX_BROADPKT ; 
 int RX_FTL ; 
 int SW_RST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct moxart_mac_priv_t* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct moxart_mac_priv_t *priv = FUNC1(ndev);

	FUNC3(SW_RST, priv->base + REG_MAC_CTRL);
	while (FUNC2(priv->base + REG_MAC_CTRL) & SW_RST)
		FUNC0(10);

	FUNC3(0, priv->base + REG_INTERRUPT_MASK);

	priv->reg_maccr = RX_BROADPKT | FULLDUP | CRC_APD | RX_FTL;
}