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
typedef  int u16 ;
typedef  int /*<<< orphan*/  port_t ;
struct TYPE_2__ {int tx_ring_buffers; int rx_ring_buffers; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline u16 FUNC1(port_t *port, u16 desc, int transmit)
{
	return (desc + 1) % (transmit ? FUNC0(port)->tx_ring_buffers
			     : FUNC0(port)->rx_ring_buffers);
}