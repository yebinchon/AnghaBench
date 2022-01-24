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
struct htc_target {int htc_flags; struct htc_endpoint* endpoint; } ;
struct htc_packet {size_t endpoint; int /*<<< orphan*/  list; int /*<<< orphan*/  status; int /*<<< orphan*/  act_len; int /*<<< orphan*/  buf; } ;
struct htc_endpoint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HTC ; 
 int /*<<< orphan*/  ECANCELED ; 
 int EINVAL ; 
 size_t ENDPOINT_MAX ; 
 int /*<<< orphan*/  ENOSPC ; 
 int HTC_OP_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct htc_target*,struct htc_endpoint*,struct htc_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_endpoint*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC6(struct htc_target *target,
			      struct htc_packet *packet)
{
	struct htc_endpoint *endpoint;
	struct list_head queue;

	FUNC2(ATH6KL_DBG_HTC,
		   "htc tx ep id %d buf 0x%p len %d\n",
		   packet->endpoint, packet->buf, packet->act_len);

	if (packet->endpoint >= ENDPOINT_MAX) {
		FUNC1(1);
		return -EINVAL;
	}

	endpoint = &target->endpoint[packet->endpoint];

	if (!FUNC3(target, endpoint, packet)) {
		packet->status = (target->htc_flags & HTC_OP_STATE_STOPPING) ?
				 -ECANCELED : -ENOSPC;
		FUNC0(&queue);
		FUNC5(&packet->list, &queue);
		FUNC4(endpoint, &queue);
	}

	return 0;
}