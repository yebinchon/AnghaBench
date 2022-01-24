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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_state; } ;
struct pppox_sock {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  PPPOX_DEAD ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct pppox_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct pppox_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct pppox_sock *po;
	int error = 0;

	if (!sk)
		return 0;

	FUNC1(sk);

	if (FUNC5(sk, SOCK_DEAD)) {
		FUNC4(sk);
		return -EBADF;
	}

	po = FUNC2(sk);
	FUNC0(po);
	FUNC8();

	FUNC3(sk);
	sk->sk_state = PPPOX_DEAD;

	FUNC6(sk);
	sock->sk = NULL;

	FUNC4(sk);
	FUNC7(sk);

	return error;
}