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
struct rtl8169_private {TYPE_1__* RxDescArray; int /*<<< orphan*/ ** Rx_databuff; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 unsigned int NUM_RX_DESC ; 
 int /*<<< orphan*/  R8169_RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC6(struct rtl8169_private *tp)
{
	unsigned int i;

	for (i = 0; i < NUM_RX_DESC && tp->Rx_databuff[i]; i++) {
		FUNC1(FUNC5(tp),
			       FUNC3(tp->RxDescArray[i].addr),
			       R8169_RX_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC0(tp->Rx_databuff[i], FUNC2(R8169_RX_BUF_SIZE));
		tp->Rx_databuff[i] = NULL;
		FUNC4(tp->RxDescArray + i);
	}
}