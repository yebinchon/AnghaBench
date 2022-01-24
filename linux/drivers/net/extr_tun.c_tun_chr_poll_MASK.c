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
struct tun_struct {TYPE_3__* dev; } ;
struct TYPE_4__ {struct sock* sk; } ;
struct tun_file {int /*<<< orphan*/  tx_ring; TYPE_1__ socket; } ;
struct sock {TYPE_2__* sk_socket; } ;
struct file {struct tun_file* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_6__ {scalar_t__ reg_state; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tun_struct*,char*) ; 
 struct tun_struct* FUNC5 (struct tun_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct tun_struct*) ; 
 scalar_t__ FUNC7 (struct tun_struct*,struct tun_file*) ; 

__attribute__((used)) static __poll_t FUNC8(struct file *file, poll_table *wait)
{
	struct tun_file *tfile = file->private_data;
	struct tun_struct *tun = FUNC5(tfile);
	struct sock *sk;
	__poll_t mask = 0;

	if (!tun)
		return EPOLLERR;

	sk = tfile->socket.sk;

	FUNC4(KERN_INFO, tun, "tun_chr_poll\n");

	FUNC0(file, FUNC2(sk), wait);

	if (!FUNC1(&tfile->tx_ring))
		mask |= EPOLLIN | EPOLLRDNORM;

	/* Make sure SOCKWQ_ASYNC_NOSPACE is set if not writable to
	 * guarantee EPOLLOUT to be raised by either here or
	 * tun_sock_write_space(). Then process could get notification
	 * after it writes to a down device and meets -EIO.
	 */
	if (FUNC7(tun, tfile) ||
	    (!FUNC3(SOCKWQ_ASYNC_NOSPACE, &sk->sk_socket->flags) &&
	     FUNC7(tun, tfile)))
		mask |= EPOLLOUT | EPOLLWRNORM;

	if (tun->dev->reg_state != NETREG_REGISTERED)
		mask = EPOLLERR;

	FUNC6(tun);
	return mask;
}