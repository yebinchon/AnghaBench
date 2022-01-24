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
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct ifi_canfd_priv {TYPE_1__ can; scalar_t__ base; } ;

/* Variables and functions */
 int CAN_CTRLMODE_BERR_REPORTING ; 
 scalar_t__ IFI_CANFD_RXSTCMD ; 
 int IFI_CANFD_RXSTCMD_EMPTY ; 
 int IFI_CANFD_RXSTCMD_OVERFLOW ; 
 scalar_t__ FUNC0 (struct net_device*,int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct napi_struct*,int) ; 
 struct ifi_canfd_priv* FUNC6 (struct net_device*) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct napi_struct *napi, int quota)
{
	struct net_device *ndev = napi->dev;
	struct ifi_canfd_priv *priv = FUNC6(ndev);
	u32 rxstcmd = FUNC7(priv->base + IFI_CANFD_RXSTCMD);
	int work_done = 0;

	/* Handle bus state changes */
	work_done += FUNC3(ndev);

	/* Handle lost messages on RX */
	if (rxstcmd & IFI_CANFD_RXSTCMD_OVERFLOW)
		work_done += FUNC2(ndev);

	/* Handle lec errors on the bus */
	if (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING)
		work_done += FUNC1(ndev);

	/* Handle normal messages on RX */
	if (!(rxstcmd & IFI_CANFD_RXSTCMD_EMPTY))
		work_done += FUNC0(ndev, quota - work_done);

	if (work_done < quota) {
		FUNC5(napi, work_done);
		FUNC4(ndev, 1);
	}

	return work_done;
}