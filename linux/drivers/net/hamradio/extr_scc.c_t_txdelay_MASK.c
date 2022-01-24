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
struct timer_list {int dummy; } ;
struct scc_channel {int /*<<< orphan*/  irq; int /*<<< orphan*/ * tx_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct scc_channel* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct scc_channel* scc ; 
 int /*<<< orphan*/  FUNC3 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_channel*) ; 
 int /*<<< orphan*/  tx_t ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct scc_channel *scc = FUNC2(scc, t, tx_t);

	FUNC3(scc);

	if (scc->tx_buff == NULL)
	{
		FUNC0(scc->irq);
		FUNC4(scc);	
		FUNC1(scc->irq);
	}
}