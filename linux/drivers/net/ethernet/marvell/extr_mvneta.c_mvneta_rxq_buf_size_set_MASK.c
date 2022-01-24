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
typedef  int u32 ;
struct mvneta_rx_queue {int /*<<< orphan*/  id; } ;
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int MVNETA_RXQ_BUF_SIZE_MASK ; 
 int MVNETA_RXQ_BUF_SIZE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mvneta_port *pp,
				    struct mvneta_rx_queue *rxq,
				    int buf_size)
{
	u32 val;

	val = FUNC1(pp, FUNC0(rxq->id));

	val &= ~MVNETA_RXQ_BUF_SIZE_MASK;
	val |= ((buf_size >> 3) << MVNETA_RXQ_BUF_SIZE_SHIFT);

	FUNC2(pp, FUNC0(rxq->id), val);
}