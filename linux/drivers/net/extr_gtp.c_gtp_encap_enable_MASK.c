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
typedef  void* u32 ;
struct sock {int dummy; } ;
struct nlattr {int dummy; } ;
struct gtp_dev {unsigned int role; struct sock* sk1u; struct sock* sk0; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int GTP_ROLE_GGSN ; 
 unsigned int GTP_ROLE_SGSN ; 
 size_t IFLA_GTP_FD0 ; 
 size_t IFLA_GTP_FD1 ; 
 size_t IFLA_GTP_ROLE ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  UDP_ENCAP_GTP0 ; 
 int /*<<< orphan*/  UDP_ENCAP_GTP1U ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (void*,int /*<<< orphan*/ ,struct gtp_dev*) ; 
 void* FUNC4 (struct nlattr*) ; 

__attribute__((used)) static int FUNC5(struct gtp_dev *gtp, struct nlattr *data[])
{
	struct sock *sk1u = NULL;
	struct sock *sk0 = NULL;
	unsigned int role = GTP_ROLE_GGSN;

	if (data[IFLA_GTP_FD0]) {
		u32 fd0 = FUNC4(data[IFLA_GTP_FD0]);

		sk0 = FUNC3(fd0, UDP_ENCAP_GTP0, gtp);
		if (FUNC0(sk0))
			return FUNC1(sk0);
	}

	if (data[IFLA_GTP_FD1]) {
		u32 fd1 = FUNC4(data[IFLA_GTP_FD1]);

		sk1u = FUNC3(fd1, UDP_ENCAP_GTP1U, gtp);
		if (FUNC0(sk1u)) {
			if (sk0)
				FUNC2(sk0);
			return FUNC1(sk1u);
		}
	}

	if (data[IFLA_GTP_ROLE]) {
		role = FUNC4(data[IFLA_GTP_ROLE]);
		if (role > GTP_ROLE_SGSN) {
			if (sk0)
				FUNC2(sk0);
			if (sk1u)
				FUNC2(sk1u);
			return -EINVAL;
		}
	}

	gtp->sk0 = sk0;
	gtp->sk1u = sk1u;
	gtp->role = role;

	return 0;
}