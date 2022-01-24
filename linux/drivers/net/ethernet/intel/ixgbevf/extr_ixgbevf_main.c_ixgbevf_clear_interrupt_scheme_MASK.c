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
struct ixgbevf_adapter {scalar_t__ num_rx_queues; scalar_t__ num_xdp_queues; scalar_t__ num_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 

__attribute__((used)) static void FUNC2(struct ixgbevf_adapter *adapter)
{
	adapter->num_tx_queues = 0;
	adapter->num_xdp_queues = 0;
	adapter->num_rx_queues = 0;

	FUNC0(adapter);
	FUNC1(adapter);
}