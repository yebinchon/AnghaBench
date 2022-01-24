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
struct TYPE_4__ {int /*<<< orphan*/  tx_state; } ;
struct TYPE_3__ {int mintime; } ;
struct scc_channel {TYPE_2__ stat; TYPE_1__ kiss; int /*<<< orphan*/  tx_wdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXS_WAIT ; 
 int /*<<< orphan*/  TX_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct scc_channel* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct scc_channel* scc ; 
 int /*<<< orphan*/  FUNC2 (struct scc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  t_dwait ; 
 int /*<<< orphan*/  tx_t ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct scc_channel *scc = FUNC1(scc, t, tx_t);
	
	FUNC0(&scc->tx_wdog);

	FUNC2(scc, TX_OFF);
	if(scc->kiss.mintime)
		FUNC3(scc, t_dwait, scc->kiss.mintime*100);
	scc->stat.tx_state = TXS_WAIT;
}