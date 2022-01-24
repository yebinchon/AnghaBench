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
struct rocker {int /*<<< orphan*/  cmd_ring; int /*<<< orphan*/  event_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rocker *rocker)
{
	FUNC1(rocker, &rocker->event_ring,
				  PCI_DMA_BIDIRECTIONAL);
	FUNC2(rocker, &rocker->event_ring);
	FUNC0(rocker);
	FUNC1(rocker, &rocker->cmd_ring,
				  PCI_DMA_BIDIRECTIONAL);
	FUNC2(rocker, &rocker->cmd_ring);
}