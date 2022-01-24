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
struct fm10k_mbx_info {int state; int local; int /*<<< orphan*/  remote; } ;
typedef  enum fm10k_mbx_state { ____Placeholder_fm10k_mbx_state } fm10k_mbx_state ;

/* Variables and functions */
#define  FM10K_STATE_CONNECT 130 
#define  FM10K_STATE_DISCONNECT 129 
#define  FM10K_STATE_OPEN 128 
 int /*<<< orphan*/  FUNC0 (struct fm10k_mbx_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_mbx_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fm10k_mbx_info *mbx)
{
	const enum fm10k_mbx_state state = mbx->state;

	switch (state) {
	case FM10K_STATE_DISCONNECT:
		/* if there is an error just disconnect */
		mbx->remote = 0;
		break;
	case FM10K_STATE_OPEN:
		/* flush any uncompleted work */
		FUNC0(mbx);
		break;
	case FM10K_STATE_CONNECT:
		/* try connnecting at lower version */
		if (mbx->remote) {
			while (mbx->local > 1)
				mbx->local--;
			mbx->remote = 0;
		}
		break;
	default:
		break;
	}

	FUNC1(mbx, 0);
}