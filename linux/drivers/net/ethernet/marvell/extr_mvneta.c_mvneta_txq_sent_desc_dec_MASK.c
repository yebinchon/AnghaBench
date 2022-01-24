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
 int MVNETA_TXQ_DEC_SENT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mvneta_port *pp,
				     struct mvneta_tx_queue *txq,
				     int sent_desc)
{
	u32 val;

	/* Only 255 TX descriptors can be updated at once */
	while (sent_desc > 0xff) {
		val = 0xff << MVNETA_TXQ_DEC_SENT_SHIFT;
		FUNC1(pp, FUNC0(txq->id), val);
		sent_desc = sent_desc - 0xff;
	}

	val = sent_desc << MVNETA_TXQ_DEC_SENT_SHIFT;
	FUNC1(pp, FUNC0(txq->id), val);
}