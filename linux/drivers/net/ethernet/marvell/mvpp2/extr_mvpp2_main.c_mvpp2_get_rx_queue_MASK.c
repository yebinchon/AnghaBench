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
struct mvpp2_rx_queue {int dummy; } ;
struct mvpp2_port {struct mvpp2_rx_queue** rxqs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct mvpp2_rx_queue *FUNC1(struct mvpp2_port *port,
							u32 cause)
{
	int queue = FUNC0(cause) - 1;

	return port->rxqs[queue];
}