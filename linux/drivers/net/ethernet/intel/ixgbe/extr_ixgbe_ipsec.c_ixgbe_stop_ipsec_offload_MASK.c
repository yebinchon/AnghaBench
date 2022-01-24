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
struct ixgbe_ipsec {struct ixgbe_ipsec* tx_tbl; struct ixgbe_ipsec* rx_tbl; struct ixgbe_ipsec* ip_tbl; } ;
struct ixgbe_adapter {struct ixgbe_ipsec* ipsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_ipsec*) ; 

void FUNC1(struct ixgbe_adapter *adapter)
{
	struct ixgbe_ipsec *ipsec = adapter->ipsec;

	adapter->ipsec = NULL;
	if (ipsec) {
		FUNC0(ipsec->ip_tbl);
		FUNC0(ipsec->rx_tbl);
		FUNC0(ipsec->tx_tbl);
		FUNC0(ipsec);
	}
}