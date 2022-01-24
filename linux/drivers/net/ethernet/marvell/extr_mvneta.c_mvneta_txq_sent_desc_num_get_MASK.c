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
struct mvneta_tx_queue {int /*<<< orphan*/  id; } ;
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int MVNETA_TXQ_SENT_DESC_MASK ; 
 int MVNETA_TXQ_SENT_DESC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mvneta_port *pp,
					struct mvneta_tx_queue *txq)
{
	u32 val;
	int sent_desc;

	val = FUNC1(pp, FUNC0(txq->id));
	sent_desc = (val & MVNETA_TXQ_SENT_DESC_MASK) >>
		MVNETA_TXQ_SENT_DESC_SHIFT;

	return sent_desc;
}