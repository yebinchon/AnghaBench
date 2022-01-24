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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ifi_canfd_priv {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_RX ; 
 scalar_t__ IFI_CANFD_RXSTCMD ; 
 int IFI_CANFD_RXSTCMD_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct ifi_canfd_priv* FUNC3 (struct net_device*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, int quota)
{
	struct ifi_canfd_priv *priv = FUNC3(ndev);
	u32 pkts = 0;
	u32 rxst;

	rxst = FUNC4(priv->base + IFI_CANFD_RXSTCMD);
	if (rxst & IFI_CANFD_RXSTCMD_EMPTY) {
		FUNC2(ndev, "No messages in RX FIFO\n");
		return 0;
	}

	for (;;) {
		if (rxst & IFI_CANFD_RXSTCMD_EMPTY)
			break;
		if (quota <= 0)
			break;

		FUNC1(ndev);
		quota--;
		pkts++;
		rxst = FUNC4(priv->base + IFI_CANFD_RXSTCMD);
	}

	if (pkts)
		FUNC0(ndev, CAN_LED_EVENT_RX);

	return pkts;
}