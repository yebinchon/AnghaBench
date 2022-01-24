#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; int /*<<< orphan*/  state; } ;
struct ifi_canfd_priv {scalar_t__ base; TYPE_1__ can; } ;

/* Variables and functions */
 int CAN_CTRLMODE_FD ; 
 int CAN_CTRLMODE_FD_NON_ISO ; 
 int CAN_CTRLMODE_LISTENONLY ; 
 int CAN_CTRLMODE_LOOPBACK ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 scalar_t__ IFI_CANFD_ERROR_CTR ; 
 int IFI_CANFD_ERROR_CTR_ER_ENABLE ; 
 int IFI_CANFD_ERROR_CTR_ER_RESET ; 
 int IFI_CANFD_ERROR_CTR_UNLOCK_MAGIC ; 
 scalar_t__ IFI_CANFD_INTERRUPT ; 
 scalar_t__ IFI_CANFD_INTERRUPT_SET_IRQ ; 
 scalar_t__ IFI_CANFD_REPEAT ; 
 scalar_t__ IFI_CANFD_RXSTCMD ; 
 int IFI_CANFD_RXSTCMD_RESET ; 
 scalar_t__ IFI_CANFD_STCMD ; 
 int IFI_CANFD_STCMD_BUSMONITOR ; 
 int IFI_CANFD_STCMD_DISABLE_CANFD ; 
 int IFI_CANFD_STCMD_ENABLE ; 
 int IFI_CANFD_STCMD_ENABLE_7_9_8_8_TIMING ; 
 int IFI_CANFD_STCMD_ENABLE_ISO ; 
 int IFI_CANFD_STCMD_HARDRESET ; 
 int IFI_CANFD_STCMD_LOOPBACK ; 
 int IFI_CANFD_STCMD_NORMAL_MODE ; 
 scalar_t__ IFI_CANFD_SUSPEND ; 
 scalar_t__ IFI_CANFD_TXSTCMD ; 
 int IFI_CANFD_TXSTCMD_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ifi_canfd_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct ifi_canfd_priv *priv = FUNC3(ndev);
	u32 stcmd;

	/* Reset the IP */
	FUNC4(IFI_CANFD_STCMD_HARDRESET, priv->base + IFI_CANFD_STCMD);
	FUNC4(IFI_CANFD_STCMD_ENABLE_7_9_8_8_TIMING,
	       priv->base + IFI_CANFD_STCMD);

	FUNC1(ndev);
	FUNC2(ndev);

	/* Reset FIFOs */
	FUNC4(IFI_CANFD_RXSTCMD_RESET, priv->base + IFI_CANFD_RXSTCMD);
	FUNC4(0, priv->base + IFI_CANFD_RXSTCMD);
	FUNC4(IFI_CANFD_TXSTCMD_RESET, priv->base + IFI_CANFD_TXSTCMD);
	FUNC4(0, priv->base + IFI_CANFD_TXSTCMD);

	/* Repeat transmission until successful */
	FUNC4(0, priv->base + IFI_CANFD_REPEAT);
	FUNC4(0, priv->base + IFI_CANFD_SUSPEND);

	/* Clear all pending interrupts */
	FUNC4((u32)(~IFI_CANFD_INTERRUPT_SET_IRQ),
	       priv->base + IFI_CANFD_INTERRUPT);

	stcmd = IFI_CANFD_STCMD_ENABLE | IFI_CANFD_STCMD_NORMAL_MODE |
		IFI_CANFD_STCMD_ENABLE_7_9_8_8_TIMING;

	if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
		stcmd |= IFI_CANFD_STCMD_BUSMONITOR;

	if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
		stcmd |= IFI_CANFD_STCMD_LOOPBACK;

	if ((priv->can.ctrlmode & CAN_CTRLMODE_FD) &&
	    !(priv->can.ctrlmode & CAN_CTRLMODE_FD_NON_ISO))
		stcmd |= IFI_CANFD_STCMD_ENABLE_ISO;

	if (!(priv->can.ctrlmode & CAN_CTRLMODE_FD))
		stcmd |= IFI_CANFD_STCMD_DISABLE_CANFD;

	priv->can.state = CAN_STATE_ERROR_ACTIVE;

	FUNC0(ndev, 1);

	/* Unlock, reset and enable the error counter. */
	FUNC4(IFI_CANFD_ERROR_CTR_UNLOCK_MAGIC,
	       priv->base + IFI_CANFD_ERROR_CTR);
	FUNC4(IFI_CANFD_ERROR_CTR_ER_RESET, priv->base + IFI_CANFD_ERROR_CTR);
	FUNC4(IFI_CANFD_ERROR_CTR_ER_ENABLE, priv->base + IFI_CANFD_ERROR_CTR);

	/* Enable controller */
	FUNC4(stcmd, priv->base + IFI_CANFD_STCMD);
}