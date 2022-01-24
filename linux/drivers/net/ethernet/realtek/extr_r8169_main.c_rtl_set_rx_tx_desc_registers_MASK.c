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
typedef  int u64 ;
struct rtl8169_private {scalar_t__ RxPhyAddr; scalar_t__ TxPhyAddr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RxDescAddrHigh ; 
 int /*<<< orphan*/  RxDescAddrLow ; 
 int /*<<< orphan*/  TxDescStartAddrHigh ; 
 int /*<<< orphan*/  TxDescStartAddrLow ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp)
{
	/*
	 * Magic spell: some iop3xx ARM board needs the TxDescAddrHigh
	 * register to be written before TxDescAddrLow to work.
	 * Switching from MMIO to I/O access fixes the issue as well.
	 */
	FUNC1(tp, TxDescStartAddrHigh, ((u64) tp->TxPhyAddr) >> 32);
	FUNC1(tp, TxDescStartAddrLow, ((u64) tp->TxPhyAddr) & FUNC0(32));
	FUNC1(tp, RxDescAddrHigh, ((u64) tp->RxPhyAddr) >> 32);
	FUNC1(tp, RxDescAddrLow, ((u64) tp->RxPhyAddr) & FUNC0(32));
}