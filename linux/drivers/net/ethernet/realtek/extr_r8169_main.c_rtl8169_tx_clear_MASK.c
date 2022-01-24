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
struct rtl8169_private {int /*<<< orphan*/  dev; scalar_t__ dirty_tx; scalar_t__ cur_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp)
{
	FUNC1(tp, tp->dirty_tx, NUM_TX_DESC);
	tp->cur_tx = tp->dirty_tx = 0;
	FUNC0(tp->dev);
}