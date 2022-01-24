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
struct vnet_port {int /*<<< orphan*/  q_index; } ;
struct netdev_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct vnet_port *port)
{
	struct netdev_queue *txq;

	txq = FUNC4(FUNC0(port),
				  port->q_index);
	FUNC1(txq, FUNC7());
	if (FUNC3(FUNC5(txq)))
		FUNC6(txq);
	FUNC2(txq);
}