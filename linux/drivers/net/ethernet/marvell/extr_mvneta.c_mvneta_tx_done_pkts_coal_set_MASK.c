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
struct mvneta_tx_queue {int /*<<< orphan*/  id; } ;
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVNETA_TXQ_SENT_THRESH_ALL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mvneta_port *pp,
					 struct mvneta_tx_queue *txq, u32 value)
{
	u32 val;

	val = FUNC2(pp, FUNC1(txq->id));

	val &= ~MVNETA_TXQ_SENT_THRESH_ALL_MASK;
	val |= FUNC0(value);

	FUNC3(pp, FUNC1(txq->id), val);
}