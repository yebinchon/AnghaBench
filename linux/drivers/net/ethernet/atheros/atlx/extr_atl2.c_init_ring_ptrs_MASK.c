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
struct atl2_adapter {scalar_t__ txs_next_clear; int /*<<< orphan*/  txs_write_ptr; scalar_t__ rxd_write_ptr; scalar_t__ rxd_read_ptr; int /*<<< orphan*/  txd_read_ptr; scalar_t__ txd_write_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct atl2_adapter *adapter)
{
	/* Read / Write Ptr Initialize: */
	adapter->txd_write_ptr = 0;
	FUNC0(&adapter->txd_read_ptr, 0);

	adapter->rxd_read_ptr = 0;
	adapter->rxd_write_ptr = 0;

	FUNC0(&adapter->txs_write_ptr, 0);
	adapter->txs_next_clear = 0;
}