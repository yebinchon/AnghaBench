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
struct TYPE_3__ {TYPE_2__* sk; } ;
struct tun_file {int flags; TYPE_1__ socket; int /*<<< orphan*/  fasync; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* sk_data_ready ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int TUN_FASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct tun_file *tfile)
{
	/* Notify and wake up reader process */
	if (tfile->flags & TUN_FASYNC)
		FUNC0(&tfile->fasync, SIGIO, POLL_IN);
	tfile->socket.sk->sk_data_ready(tfile->socket.sk);
}