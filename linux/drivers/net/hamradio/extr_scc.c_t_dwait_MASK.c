#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ fulldup; int persist; int /*<<< orphan*/  txdelay; int /*<<< orphan*/  slottime; scalar_t__ group; } ;
struct TYPE_3__ {scalar_t__ tx_state; } ;
struct scc_channel {int* wreg; TYPE_2__ kiss; scalar_t__ dcd; TYPE_1__ stat; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 scalar_t__ KISS_DUPLEX_HALF ; 
 size_t R5 ; 
 int RTS ; 
 int Rand ; 
 scalar_t__ TXS_BUSY ; 
 scalar_t__ TXS_IDLE ; 
 scalar_t__ TXS_WAIT ; 
 int /*<<< orphan*/  TX_ON ; 
 struct scc_channel* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct scc_channel* scc ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct scc_channel*,void (*) (struct timer_list*),int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 void FUNC7 (struct timer_list*) ; 
 int /*<<< orphan*/  tx_t ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct scc_channel *scc = FUNC0(scc, t, tx_t);
	
	if (scc->stat.tx_state == TXS_WAIT)	/* maxkeyup or idle timeout */
	{
		if (FUNC6(&scc->tx_queue)) {	/* nothing to send */
			scc->stat.tx_state = TXS_IDLE;
			FUNC2(scc->dev);	/* t_maxkeyup locked it. */
			return;
		}

		scc->stat.tx_state = TXS_BUSY;
	}

	if (scc->kiss.fulldup == KISS_DUPLEX_HALF)
	{
		Rand = Rand * 17 + 31;
		
		if (scc->dcd || (scc->kiss.persist) < Rand || (scc->kiss.group && FUNC1(scc)) )
		{
			FUNC4(scc);
			FUNC5(scc, t_dwait, scc->kiss.slottime);
			return ;
		}
	}

	if ( !(scc->wreg[R5] & RTS) )
	{
		FUNC3(scc, TX_ON);
		FUNC5(scc, t_txdelay, scc->kiss.txdelay);
	} else {
		FUNC5(scc, t_txdelay, 0);
	}
}