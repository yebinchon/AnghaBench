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
struct mv643xx_eth_private {int rxq_count; int txq_count; scalar_t__ txq; scalar_t__ rxq; } ;

/* Variables and functions */
 unsigned int DO_NOT_FORCE_LINK_FAIL ; 
 unsigned int FORCE_LINK_PASS ; 
 int /*<<< orphan*/  PORT_SERIAL_CONTROL ; 
 int /*<<< orphan*/  PORT_STATUS ; 
 unsigned int SERIAL_PORT_ENABLE ; 
 int TX_FIFO_EMPTY ; 
 int TX_IN_PROGRESS ; 
 void* FUNC0 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct mv643xx_eth_private *mp)
{
	unsigned int data;
	int i;

	for (i = 0; i < mp->rxq_count; i++)
		FUNC1(mp->rxq + i);
	for (i = 0; i < mp->txq_count; i++)
		FUNC2(mp->txq + i);

	while (1) {
		u32 ps = FUNC0(mp, PORT_STATUS);

		if ((ps & (TX_IN_PROGRESS | TX_FIFO_EMPTY)) == TX_FIFO_EMPTY)
			break;
		FUNC3(10);
	}

	/* Reset the Enable bit in the Configuration Register */
	data = FUNC0(mp, PORT_SERIAL_CONTROL);
	data &= ~(SERIAL_PORT_ENABLE		|
		  DO_NOT_FORCE_LINK_FAIL	|
		  FORCE_LINK_PASS);
	FUNC4(mp, PORT_SERIAL_CONTROL, data);
}