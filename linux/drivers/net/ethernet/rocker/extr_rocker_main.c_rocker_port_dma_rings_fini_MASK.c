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
struct rocker_port {int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring; struct rocker* rocker; } ;
struct rocker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct rocker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker_port*) ; 

__attribute__((used)) static void FUNC3(struct rocker_port *rocker_port)
{
	struct rocker *rocker = rocker_port->rocker;

	FUNC2(rocker_port);
	FUNC0(rocker, &rocker_port->rx_ring,
				  PCI_DMA_BIDIRECTIONAL);
	FUNC1(rocker, &rocker_port->rx_ring);
	FUNC0(rocker, &rocker_port->tx_ring,
				  PCI_DMA_TODEVICE);
	FUNC1(rocker, &rocker_port->tx_ring);
}