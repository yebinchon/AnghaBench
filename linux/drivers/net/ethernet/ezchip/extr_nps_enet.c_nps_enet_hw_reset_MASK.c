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

/* Variables and functions */
 int NPS_ENET_ENABLE ; 
 int /*<<< orphan*/  NPS_ENET_REG_GE_RST ; 
 int /*<<< orphan*/  NPS_ENET_REG_PHASE_FIFO_CTL ; 
 int PHASE_FIFO_CTL_INIT_SHIFT ; 
 int PHASE_FIFO_CTL_RST_SHIFT ; 
 int RST_GMAC_0_SHIFT ; 
 struct nps_enet_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nps_enet_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct nps_enet_priv *priv = FUNC0(ndev);
	u32 ge_rst_value = 0, phase_fifo_ctl_value = 0;

	/* Pcs reset sequence*/
	ge_rst_value |= NPS_ENET_ENABLE << RST_GMAC_0_SHIFT;
	FUNC1(priv, NPS_ENET_REG_GE_RST, ge_rst_value);
	FUNC2(10, 20);
	ge_rst_value = 0;
	FUNC1(priv, NPS_ENET_REG_GE_RST, ge_rst_value);

	/* Tx fifo reset sequence */
	phase_fifo_ctl_value |= NPS_ENET_ENABLE << PHASE_FIFO_CTL_RST_SHIFT;
	phase_fifo_ctl_value |= NPS_ENET_ENABLE << PHASE_FIFO_CTL_INIT_SHIFT;
	FUNC1(priv, NPS_ENET_REG_PHASE_FIFO_CTL,
			 phase_fifo_ctl_value);
	FUNC2(10, 20);
	phase_fifo_ctl_value = 0;
	FUNC1(priv, NPS_ENET_REG_PHASE_FIFO_CTL,
			 phase_fifo_ctl_value);
}