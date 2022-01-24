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
typedef  scalar_t__ u32 ;
struct pch_can_priv {TYPE_1__* regs; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  stat; } ;

/* Variables and functions */
 scalar_t__ PCH_BUS_OFF ; 
 int /*<<< orphan*/  PCH_CAN_ALL ; 
 scalar_t__ PCH_LEC_ALL ; 
 scalar_t__ PCH_RX_OBJ_END ; 
 scalar_t__ PCH_RX_OBJ_START ; 
 scalar_t__ PCH_RX_OK ; 
 scalar_t__ PCH_STATUS_INT ; 
 scalar_t__ PCH_TX_OBJ_END ; 
 scalar_t__ PCH_TX_OBJ_START ; 
 scalar_t__ PCH_TX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 struct pch_can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct pch_can_priv*) ; 
 scalar_t__ FUNC6 (struct net_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_can_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct napi_struct *napi, int quota)
{
	struct net_device *ndev = napi->dev;
	struct pch_can_priv *priv = FUNC2(ndev);
	u32 int_stat;
	u32 reg_stat;
	int quota_save = quota;

	int_stat = FUNC5(priv);
	if (!int_stat)
		goto end;

	if (int_stat == PCH_STATUS_INT) {
		reg_stat = FUNC0(&priv->regs->stat);

		if ((reg_stat & (PCH_BUS_OFF | PCH_LEC_ALL)) &&
		   ((reg_stat & PCH_LEC_ALL) != PCH_LEC_ALL)) {
			FUNC4(ndev, reg_stat);
			quota--;
		}

		if (reg_stat & (PCH_TX_OK | PCH_RX_OK))
			FUNC3(&priv->regs->stat,
					  reg_stat & (PCH_TX_OK | PCH_RX_OK));

		int_stat = FUNC5(priv);
	}

	if (quota == 0)
		goto end;

	if ((int_stat >= PCH_RX_OBJ_START) && (int_stat <= PCH_RX_OBJ_END)) {
		quota -= FUNC6(ndev, int_stat, quota);
	} else if ((int_stat >= PCH_TX_OBJ_START) &&
		   (int_stat <= PCH_TX_OBJ_END)) {
		/* Handle transmission interrupt */
		FUNC8(ndev, int_stat);
	}

end:
	FUNC1(napi);
	FUNC7(priv, PCH_CAN_ALL);

	return quota_save - quota;
}