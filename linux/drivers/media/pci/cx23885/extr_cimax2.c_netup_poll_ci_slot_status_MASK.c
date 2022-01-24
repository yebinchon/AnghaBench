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
struct netup_ci_state {int status; } ;
struct dvb_ca_en50221 {struct netup_ci_state* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int NETUP_IRQ_DETAM ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ca_en50221*,int) ; 

int FUNC2(struct dvb_ca_en50221 *en50221,
				     int slot, int open)
{
	struct netup_ci_state *state = en50221->data;

	if (0 != slot)
		return -EINVAL;

	FUNC1(en50221, open ? (NETUP_IRQ_DETAM | FUNC0())
			: NETUP_IRQ_DETAM);

	return state->status;
}