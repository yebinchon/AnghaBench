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
typedef  int /*<<< orphan*/  u32 ;
struct mac_driver {int dummy; } ;
struct hns_gmac_port_mode_cfg {int port_mode; void* strip_pad_en; void* runt_pkt_en; void* an_enable; void* crc_add; void* pad_enable; void* short_runts_thr; void* max_frm_size; } ;
typedef  enum hns_port_mode { ____Placeholder_hns_port_mode } hns_port_mode ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_MAX_FRM_SIZE_M ; 
 int /*<<< orphan*/  GMAC_MAX_FRM_SIZE_REG ; 
 int /*<<< orphan*/  GMAC_MAX_FRM_SIZE_S ; 
 int /*<<< orphan*/  GMAC_PORT_MODE_M ; 
 int /*<<< orphan*/  GMAC_PORT_MODE_REG ; 
 int /*<<< orphan*/  GMAC_PORT_MODE_S ; 
 int /*<<< orphan*/  GMAC_RECV_CONTROL_REG ; 
 int /*<<< orphan*/  GMAC_RECV_CTRL_RUNT_PKT_EN_B ; 
 int /*<<< orphan*/  GMAC_RECV_CTRL_STRIP_PAD_EN_B ; 
 int /*<<< orphan*/  GMAC_SHORT_RUNTS_THR_M ; 
 int /*<<< orphan*/  GMAC_SHORT_RUNTS_THR_REG ; 
 int /*<<< orphan*/  GMAC_SHORT_RUNTS_THR_S ; 
 int /*<<< orphan*/  GMAC_TRANSMIT_CONTROL_REG ; 
 int /*<<< orphan*/  GMAC_TX_AN_EN_B ; 
 int /*<<< orphan*/  GMAC_TX_CRC_ADD_B ; 
 int /*<<< orphan*/  GMAC_TX_PAD_EN_B ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct mac_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *mac_drv,
				   struct hns_gmac_port_mode_cfg *port_mode)
{
	u32 tx_ctrl;
	u32 recv_ctrl;
	struct mac_driver *drv = (struct mac_driver *)mac_drv;

	port_mode->port_mode = (enum hns_port_mode)FUNC1(
		drv, GMAC_PORT_MODE_REG, GMAC_PORT_MODE_M, GMAC_PORT_MODE_S);

	tx_ctrl = FUNC2(drv, GMAC_TRANSMIT_CONTROL_REG);
	recv_ctrl = FUNC2(drv, GMAC_RECV_CONTROL_REG);

	port_mode->max_frm_size =
		FUNC1(drv, GMAC_MAX_FRM_SIZE_REG,
				   GMAC_MAX_FRM_SIZE_M, GMAC_MAX_FRM_SIZE_S);
	port_mode->short_runts_thr =
		FUNC1(drv, GMAC_SHORT_RUNTS_THR_REG,
				   GMAC_SHORT_RUNTS_THR_M,
				   GMAC_SHORT_RUNTS_THR_S);

	port_mode->pad_enable = FUNC0(tx_ctrl, GMAC_TX_PAD_EN_B);
	port_mode->crc_add = FUNC0(tx_ctrl, GMAC_TX_CRC_ADD_B);
	port_mode->an_enable = FUNC0(tx_ctrl, GMAC_TX_AN_EN_B);

	port_mode->runt_pkt_en =
		FUNC0(recv_ctrl, GMAC_RECV_CTRL_RUNT_PKT_EN_B);
	port_mode->strip_pad_en =
		FUNC0(recv_ctrl, GMAC_RECV_CTRL_STRIP_PAD_EN_B);
}