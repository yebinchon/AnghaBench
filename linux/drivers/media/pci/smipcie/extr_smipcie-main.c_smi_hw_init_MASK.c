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
struct smi_dev {int dummy; } ;

/* Variables and functions */
 int ALL_INT ; 
 int /*<<< orphan*/  MPEG2_CTRL_A ; 
 int /*<<< orphan*/  MPEG2_CTRL_B ; 
 int /*<<< orphan*/  MSI_INT_ENA_CLR ; 
 int /*<<< orphan*/  MSI_INT_STATUS ; 
 int /*<<< orphan*/  MSI_INT_STATUS_CLR ; 
 int /*<<< orphan*/  MUX_MODE_CTRL ; 
 int /*<<< orphan*/  PERIPHERAL_CTRL ; 
 int /*<<< orphan*/  VIDEO_CTRL_STATUS_A ; 
 int /*<<< orphan*/  VIDEO_CTRL_STATUS_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int rbPaMSDtvNoGpio ; 
 int rbPaMSMask ; 
 int rbPbMSDtvNoGpio ; 
 int rbPbMSMask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct smi_dev *dev)
{
	u32 port_mux, port_ctrl, int_stat;

	/* set port mux.*/
	port_mux = FUNC2(MUX_MODE_CTRL);
	port_mux &= ~(rbPaMSMask);
	port_mux |= rbPaMSDtvNoGpio;
	port_mux &= ~(rbPbMSMask);
	port_mux |= rbPbMSDtvNoGpio;
	port_mux &= ~(0x0f0000);
	port_mux |= 0x50000;
	FUNC4(MUX_MODE_CTRL, port_mux);

	/* set DTV register.*/
	/* Port A */
	port_ctrl = FUNC2(VIDEO_CTRL_STATUS_A);
	port_ctrl &= ~0x01;
	FUNC4(VIDEO_CTRL_STATUS_A, port_ctrl);
	port_ctrl = FUNC2(MPEG2_CTRL_A);
	port_ctrl &= ~0x40;
	port_ctrl |= 0x80;
	FUNC4(MPEG2_CTRL_A, port_ctrl);
	/* Port B */
	port_ctrl = FUNC2(VIDEO_CTRL_STATUS_B);
	port_ctrl &= ~0x01;
	FUNC4(VIDEO_CTRL_STATUS_B, port_ctrl);
	port_ctrl = FUNC2(MPEG2_CTRL_B);
	port_ctrl &= ~0x40;
	port_ctrl |= 0x80;
	FUNC4(MPEG2_CTRL_B, port_ctrl);

	/* disable and clear interrupt.*/
	FUNC4(MSI_INT_ENA_CLR, ALL_INT);
	int_stat = FUNC2(MSI_INT_STATUS);
	FUNC4(MSI_INT_STATUS_CLR, int_stat);

	/* reset demod.*/
	FUNC1(PERIPHERAL_CTRL, 0x0303);
	FUNC0(50);
	FUNC3(PERIPHERAL_CTRL, 0x0101);
	return 0;
}