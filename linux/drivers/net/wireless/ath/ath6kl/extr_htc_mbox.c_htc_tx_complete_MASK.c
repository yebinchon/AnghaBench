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
struct list_head {int dummy; } ;
struct htc_endpoint {int /*<<< orphan*/  target; int /*<<< orphan*/  eid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 scalar_t__ FUNC3 (struct list_head*) ; 

__attribute__((used)) static void FUNC4(struct htc_endpoint *endpoint,
			    struct list_head *txq)
{
	if (FUNC3(txq))
		return;

	FUNC0(ATH6KL_DBG_HTC,
		   "htc tx complete ep %d pkts %d\n",
		   endpoint->eid, FUNC2(txq));

	FUNC1(endpoint->target, txq);
}