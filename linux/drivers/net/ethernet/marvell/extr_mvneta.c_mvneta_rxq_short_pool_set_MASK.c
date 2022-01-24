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
typedef  int u32 ;
struct mvneta_rx_queue {int /*<<< orphan*/  id; } ;
struct mvneta_port {TYPE_1__* pool_short; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MVNETA_RXQ_SHORT_POOL_ID_MASK ; 
 int MVNETA_RXQ_SHORT_POOL_ID_SHIFT ; 
 int FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mvneta_port *pp,
				      struct mvneta_rx_queue *rxq)
{
	u32 val;

	val = FUNC1(pp, FUNC0(rxq->id));
	val &= ~MVNETA_RXQ_SHORT_POOL_ID_MASK;
	val |= (pp->pool_short->id << MVNETA_RXQ_SHORT_POOL_ID_SHIFT);

	FUNC2(pp, FUNC0(rxq->id), val);
}