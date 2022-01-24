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
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_RX ; 
 int /*<<< orphan*/  MAC_RX_RXD_ ; 
 int /*<<< orphan*/  MAC_RX_RXEN_ ; 
 int /*<<< orphan*/  MAC_TX ; 
 int /*<<< orphan*/  MAC_TX_TXD_ ; 
 int /*<<< orphan*/  MAC_TX_TXEN_ ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct lan743x_adapter *adapter)
{
	u32 temp;

	temp = FUNC0(adapter, MAC_TX);
	temp &= ~MAC_TX_TXEN_;
	FUNC2(adapter, MAC_TX, temp);
	FUNC1(adapter, MAC_TX, MAC_TX_TXD_,
				 1, 1000, 20000, 100);

	temp = FUNC0(adapter, MAC_RX);
	temp &= ~MAC_RX_RXEN_;
	FUNC2(adapter, MAC_RX, temp);
	FUNC1(adapter, MAC_RX, MAC_RX_RXD_,
				 1, 1000, 20000, 100);
}