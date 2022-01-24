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
struct TYPE_2__ {int /*<<< orphan*/  rxerrs; } ;
struct scc_channel {int /*<<< orphan*/ * rx_buff; TYPE_1__ stat; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct scc_channel *scc)
{
	int k;
	
	for (k=0; k<3; k++)
		FUNC0(scc->data);
		
	if(scc->rx_buff != NULL)		/* did we receive something? */
	{
		scc->stat.rxerrs++;  /* then count it as an error */
		FUNC1(scc->rx_buff);
		scc->rx_buff = NULL;
	}
}