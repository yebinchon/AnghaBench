#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t call_id; } ;
struct TYPE_5__ {TYPE_1__ src_addr; } ;
struct TYPE_6__ {TYPE_2__ pptp; } ;
struct pppox_sock {TYPE_3__ proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  callid_bitmap ; 
 int /*<<< orphan*/ * callid_sock ; 
 int /*<<< orphan*/  chan_lock ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pppox_sock *sock)
{
	FUNC2(&chan_lock);
	FUNC1(sock->proto.pptp.src_addr.call_id, callid_bitmap);
	FUNC0(callid_sock[sock->proto.pptp.src_addr.call_id], NULL);
	FUNC3(&chan_lock);
}