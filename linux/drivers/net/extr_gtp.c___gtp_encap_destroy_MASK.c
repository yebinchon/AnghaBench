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
struct sock {struct gtp_dev* sk_user_data; } ;
struct gtp_dev {int /*<<< orphan*/ * sk1u; struct sock* sk0; } ;
struct TYPE_2__ {scalar_t__ encap_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct gtp_dev *gtp;

	FUNC0(sk);
	gtp = sk->sk_user_data;
	if (gtp) {
		if (gtp->sk0 == sk)
			gtp->sk0 = NULL;
		else
			gtp->sk1u = NULL;
		FUNC4(sk)->encap_type = 0;
		FUNC1(sk, NULL);
		FUNC3(sk);
	}
	FUNC2(sk);
}