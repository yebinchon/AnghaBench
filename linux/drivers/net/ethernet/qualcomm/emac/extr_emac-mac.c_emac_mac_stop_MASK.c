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
struct emac_adapter {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ EMAC_MAC_CTRL ; 
 scalar_t__ EMAC_RXQ_CTRL_0 ; 
 scalar_t__ EMAC_TXQ_CTRL_0 ; 
 int RXEN ; 
 int RXQ_EN ; 
 int TXEN ; 
 int TXQ_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2(struct emac_adapter *adpt)
{
	FUNC0(adpt->base + EMAC_RXQ_CTRL_0, RXQ_EN, 0);
	FUNC0(adpt->base + EMAC_TXQ_CTRL_0, TXQ_EN, 0);
	FUNC0(adpt->base + EMAC_MAC_CTRL, TXEN | RXEN, 0);
	FUNC1(1000, 1050); /* stopping mac may take upto 1msec */
}