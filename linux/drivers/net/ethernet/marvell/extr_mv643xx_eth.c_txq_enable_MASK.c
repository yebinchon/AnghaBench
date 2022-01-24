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
struct tx_queue {int index; } ;
struct mv643xx_eth_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXQ_COMMAND ; 
 struct mv643xx_eth_private* FUNC0 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct tx_queue *txq)
{
	struct mv643xx_eth_private *mp = FUNC0(txq);
	FUNC1(mp, TXQ_COMMAND, 1 << txq->index);
}