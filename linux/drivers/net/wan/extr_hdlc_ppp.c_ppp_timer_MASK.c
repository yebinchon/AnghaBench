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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int expires; } ;
struct proto {int state; TYPE_1__ timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  pid; int /*<<< orphan*/  restart_counter; } ;
struct ppp {int last_pong; int keepalive_timeout; int keepalive_interval; int /*<<< orphan*/  lock; int /*<<< orphan*/  echo_id; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
#define  ACK_RECV 132 
#define  ACK_SENT 131 
 int HZ ; 
 int /*<<< orphan*/  LCP_ECHO_REQ ; 
#define  OPENED 130 
 int /*<<< orphan*/  PID_LCP ; 
#define  REQ_SENT 129 
 int /*<<< orphan*/  START ; 
 int /*<<< orphan*/  STOP ; 
#define  STOPPING 128 
 int /*<<< orphan*/  TO_BAD ; 
 int /*<<< orphan*/  TO_GOOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct proto* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ppp* FUNC2 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct proto* proto ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct proto *proto = FUNC1(proto, t, timer);
	struct ppp *ppp = FUNC2(proto->dev);
	unsigned long flags;

	FUNC8(&ppp->lock, flags);
	switch (proto->state) {
	case STOPPING:
	case REQ_SENT:
	case ACK_RECV:
	case ACK_SENT:
		if (proto->restart_counter) {
			FUNC5(proto->dev, proto->pid, TO_GOOD, 0, 0,
				     0, NULL);
			proto->restart_counter--;
		} else if (FUNC4(proto->dev))
			FUNC5(proto->dev, proto->pid, TO_GOOD, 0, 0,
				     0, NULL);
		else
			FUNC5(proto->dev, proto->pid, TO_BAD, 0, 0,
				     0, NULL);
		break;

	case OPENED:
		if (proto->pid != PID_LCP)
			break;
		if (FUNC10(jiffies, ppp->last_pong +
			       ppp->keepalive_timeout * HZ)) {
			FUNC3(proto->dev, "Link down\n");
			FUNC5(proto->dev, PID_LCP, STOP, 0, 0, 0, NULL);
			FUNC5(proto->dev, PID_LCP, START, 0, 0, 0, NULL);
		} else {	/* send keep-alive packet */
			ppp->echo_id = ++ppp->seq;
			FUNC6(proto->dev, PID_LCP, LCP_ECHO_REQ,
				  ppp->echo_id, 0, NULL);
			proto->timer.expires = jiffies +
				ppp->keepalive_interval * HZ;
			FUNC0(&proto->timer);
		}
		break;
	}
	FUNC9(&ppp->lock, flags);
	FUNC7();
}