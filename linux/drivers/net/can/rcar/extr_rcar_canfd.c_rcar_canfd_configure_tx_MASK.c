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
typedef  int u16 ;
struct rcar_canfd_global {int /*<<< orphan*/  base; scalar_t__ fdmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int RCANFD_CFCC_CFIM ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int RCANFD_CFCC_CFTXIE ; 
 int /*<<< orphan*/  RCANFD_CFFIFO_IDX ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rcar_canfd_global *gpriv, u32 ch)
{
	/* Tx/Rx(Common) FIFO configured in Tx mode is
	 * used for transmission
	 *
	 * Each channel has 3 Common FIFO dedicated to them.
	 * Use the 1st (index 0) out of 3
	 */
	u32 cfg;
	u16 cftml, cfm, cfdc, cfpls;

	cftml = 0;		/* 0th buffer */
	cfm = 1;		/* b01 - Transmit mode */
	cfdc = 2;		/* b010 - 8 messages Tx FIFO depth */
	if (gpriv->fdmode)
		cfpls = 7;	/* b111 - Max 64 bytes payload */
	else
		cfpls = 0;	/* b000 - Max 8 bytes payload */

	cfg = (FUNC4(cftml) | FUNC2(cfm) |
		RCANFD_CFCC_CFIM | FUNC1(cfdc) |
		FUNC3(cfpls) | RCANFD_CFCC_CFTXIE);
	FUNC6(gpriv->base, FUNC0(ch, RCANFD_CFFIFO_IDX), cfg);

	if (gpriv->fdmode)
		/* Clear FD mode specific control/status register */
		FUNC6(gpriv->base,
				 FUNC5(ch, RCANFD_CFFIFO_IDX), 0);
}