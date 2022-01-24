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
struct pptp_addr {int call_id; } ;
struct TYPE_3__ {struct pptp_addr src_addr; } ;
struct TYPE_4__ {TYPE_1__ pptp; } ;
struct pppox_sock {TYPE_2__ proto; } ;

/* Variables and functions */
 int MAX_CALLID ; 
 int /*<<< orphan*/  callid_bitmap ; 
 int /*<<< orphan*/ * callid_sock ; 
 int /*<<< orphan*/  chan_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pppox_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pppox_sock *sock,
		    struct pptp_addr *sa)
{
	static int call_id;

	FUNC3(&chan_lock);
	if (!sa->call_id)	{
		call_id = FUNC0(callid_bitmap, MAX_CALLID, call_id + 1);
		if (call_id == MAX_CALLID) {
			call_id = FUNC0(callid_bitmap, MAX_CALLID, 1);
			if (call_id == MAX_CALLID)
				goto out_err;
		}
		sa->call_id = call_id;
	} else if (FUNC5(sa->call_id, callid_bitmap)) {
		goto out_err;
	}

	sock->proto.pptp.src_addr = *sa;
	FUNC2(sa->call_id, callid_bitmap);
	FUNC1(callid_sock[sa->call_id], sock);
	FUNC4(&chan_lock);

	return 0;

out_err:
	FUNC4(&chan_lock);
	return -1;
}