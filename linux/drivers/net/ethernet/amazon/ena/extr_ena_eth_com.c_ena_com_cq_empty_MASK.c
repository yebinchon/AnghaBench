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
struct ena_eth_io_rx_cdesc_base {int dummy; } ;
struct ena_com_io_cq {int dummy; } ;

/* Variables and functions */
 struct ena_eth_io_rx_cdesc_base* FUNC0 (struct ena_com_io_cq*) ; 

bool FUNC1(struct ena_com_io_cq *io_cq)
{
	struct ena_eth_io_rx_cdesc_base *cdesc;

	cdesc = FUNC0(io_cq);
	if (cdesc)
		return false;
	else
		return true;
}