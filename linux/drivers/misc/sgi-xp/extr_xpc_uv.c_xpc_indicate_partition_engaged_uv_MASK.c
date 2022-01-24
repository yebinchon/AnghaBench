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
struct xpc_partition {int dummy; } ;
struct xpc_activate_mq_msg_uv {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  XPC_ACTIVATE_MQ_MSG_MARK_ENGAGED_UV ; 
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*,struct xpc_activate_mq_msg_uv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct xpc_partition *part)
{
	struct xpc_activate_mq_msg_uv msg;

	FUNC0(part, &msg, sizeof(msg),
				      XPC_ACTIVATE_MQ_MSG_MARK_ENGAGED_UV);
}