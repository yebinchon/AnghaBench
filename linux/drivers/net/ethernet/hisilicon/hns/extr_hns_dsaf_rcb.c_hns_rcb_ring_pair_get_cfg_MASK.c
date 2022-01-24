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
struct TYPE_2__ {int /*<<< orphan*/ * handle; } ;
struct ring_pair_cb {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_RING ; 
 int /*<<< orphan*/  TX_RING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ring_pair_cb *ring_pair_cb)
{
	ring_pair_cb->q.handle = NULL;

	FUNC0(&ring_pair_cb->q, RX_RING);
	FUNC0(&ring_pair_cb->q, TX_RING);
}