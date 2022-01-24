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
struct mvpp2_tx_queue {int id; } ;
struct mvpp2_port {struct mvpp2* priv; } ;
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int MVPP2_TXQ_RSVD_REQ_Q_OFFSET ; 
 int /*<<< orphan*/  MVPP2_TXQ_RSVD_REQ_REG ; 
 int MVPP2_TXQ_RSVD_RSLT_MASK ; 
 int /*<<< orphan*/  MVPP2_TXQ_RSVD_RSLT_REG ; 
 unsigned int FUNC0 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mvpp2*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct mvpp2_port *port,
					 struct mvpp2_tx_queue *txq, int num)
{
	unsigned int thread = FUNC0(port->priv, FUNC3());
	struct mvpp2 *priv = port->priv;
	u32 val;

	val = (txq->id << MVPP2_TXQ_RSVD_REQ_Q_OFFSET) | num;
	FUNC2(priv, thread, MVPP2_TXQ_RSVD_REQ_REG, val);

	val = FUNC1(priv, thread, MVPP2_TXQ_RSVD_RSLT_REG);

	return val & MVPP2_TXQ_RSVD_RSLT_MASK;
}