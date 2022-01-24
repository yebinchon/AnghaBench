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
struct nps_enet_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;

/* Variables and functions */
 int NPS_ENET_ENABLE ; 
 int /*<<< orphan*/  NPS_ENET_REG_BUF_INT_ENABLE ; 
 int RX_RDY_SHIFT ; 
 int TX_DONE_SHIFT ; 
 scalar_t__ FUNC0 (struct napi_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 struct nps_enet_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct nps_enet_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct nps_enet_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct napi_struct *napi, int budget)
{
	struct net_device *ndev = napi->dev;
	struct nps_enet_priv *priv = FUNC2(ndev);
	u32 work_done;

	FUNC6(ndev);
	work_done = FUNC5(ndev);
	if ((work_done < budget) && FUNC0(napi, work_done)) {
		u32 buf_int_enable_value = 0;

		/* set tx_done and rx_rdy bits */
		buf_int_enable_value |= NPS_ENET_ENABLE << RX_RDY_SHIFT;
		buf_int_enable_value |= NPS_ENET_ENABLE << TX_DONE_SHIFT;

		FUNC4(priv, NPS_ENET_REG_BUF_INT_ENABLE,
				 buf_int_enable_value);

		/* in case we will get a tx interrupt while interrupts
		 * are masked, we will lose it since the tx is edge interrupt.
		 * specifically, while executing the code section above,
		 * between nps_enet_tx_handler and the interrupts enable, all
		 * tx requests will be stuck until we will get an rx interrupt.
		 * the two code lines below will solve this situation by
		 * re-adding ourselves to the poll list.
		 */
		if (FUNC3(priv)) {
			FUNC4(priv, NPS_ENET_REG_BUF_INT_ENABLE, 0);
			FUNC1(napi);
		}
	}

	return work_done;
}