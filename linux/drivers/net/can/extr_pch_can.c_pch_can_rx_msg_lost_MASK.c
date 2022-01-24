#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct pch_can_priv {TYPE_2__* regs; TYPE_3__* ndev; } ;
struct net_device_stats {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_over_errors; } ;
struct net_device {int dummy; } ;
struct can_frame {int /*<<< orphan*/ * data; int /*<<< orphan*/  can_id; } ;
struct TYPE_6__ {struct net_device_stats stats; } ;
struct TYPE_5__ {TYPE_1__* ifregs; } ;
struct TYPE_4__ {int /*<<< orphan*/  creq; int /*<<< orphan*/  cmask; int /*<<< orphan*/  mcont; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_ERR_CRTL ; 
 int /*<<< orphan*/  CAN_ERR_CRTL_RX_OVERFLOW ; 
 int PCH_CMASK_CTRL ; 
 int PCH_CMASK_RDWR ; 
 int /*<<< orphan*/  PCH_IF_MCONT_MSGLOST ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 struct pch_can_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev, int obj_id)
{
	struct pch_can_priv *priv = FUNC3(ndev);
	struct net_device_stats *stats = &(priv->ndev->stats);
	struct sk_buff *skb;
	struct can_frame *cf;

	FUNC2(priv->ndev, "Msg Obj is overwritten.\n");
	FUNC5(&priv->regs->ifregs[0].mcont,
			  PCH_IF_MCONT_MSGLOST);
	FUNC1(PCH_CMASK_RDWR | PCH_CMASK_CTRL,
		  &priv->regs->ifregs[0].cmask);
	FUNC6(&priv->regs->ifregs[0].creq, obj_id);

	skb = FUNC0(ndev, &cf);
	if (!skb)
		return;

	cf->can_id |= CAN_ERR_CRTL;
	cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
	stats->rx_over_errors++;
	stats->rx_errors++;

	FUNC4(skb);
}