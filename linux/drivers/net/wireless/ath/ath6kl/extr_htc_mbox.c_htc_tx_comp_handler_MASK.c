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
struct list_head {int dummy; } ;
struct htc_target {struct htc_endpoint* endpoint; } ;
struct TYPE_3__ {int /*<<< orphan*/  seqno; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct htc_packet {size_t endpoint; int /*<<< orphan*/  list; TYPE_2__ info; } ;
struct htc_endpoint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct htc_target*,struct htc_endpoint*,struct htc_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct htc_endpoint*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static void FUNC5(struct htc_target *target,
				struct htc_packet *packet)
{
	struct htc_endpoint *endpoint = &target->endpoint[packet->endpoint];
	struct list_head container;

	FUNC1(ATH6KL_DBG_HTC, "htc tx complete seqno %d\n",
		   packet->info.tx.seqno);

	FUNC2(target, endpoint, packet);
	FUNC0(&container);
	FUNC4(&packet->list, &container);
	/* do completion */
	FUNC3(endpoint, &container);
}