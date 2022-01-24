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
struct udp_tunnel_sock_cfg {int encap_type; int /*<<< orphan*/  encap_destroy; int /*<<< orphan*/  encap_rcv; struct gtp_dev* sk_user_data; int /*<<< orphan*/ * member_0; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_protocol; scalar_t__ sk_user_data; } ;
struct gtp_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  gtp_encap_destroy ; 
 int /*<<< orphan*/  gtp_encap_recv ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct socket*,struct udp_tunnel_sock_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct socket* FUNC7 (int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 

__attribute__((used)) static struct sock *FUNC9(int fd, int type,
					    struct gtp_dev *gtp)
{
	struct udp_tunnel_sock_cfg tuncfg = {NULL};
	struct socket *sock;
	struct sock *sk;
	int err;

	FUNC2("enable gtp on %d, %d\n", fd, type);

	sock = FUNC7(fd, &err);
	if (!sock) {
		FUNC2("gtp socket fd=%d not found\n", fd);
		return NULL;
	}

	if (sock->sk->sk_protocol != IPPROTO_UDP) {
		FUNC2("socket fd=%d not UDP\n", fd);
		sk = FUNC0(-EINVAL);
		goto out_sock;
	}

	FUNC1(sock->sk);
	if (sock->sk->sk_user_data) {
		sk = FUNC0(-EBUSY);
		goto out_sock;
	}

	sk = sock->sk;
	FUNC5(sk);

	tuncfg.sk_user_data = gtp;
	tuncfg.encap_type = type;
	tuncfg.encap_rcv = gtp_encap_recv;
	tuncfg.encap_destroy = gtp_encap_destroy;

	FUNC4(FUNC6(sock->sk), sock, &tuncfg);

out_sock:
	FUNC3(sock->sk);
	FUNC8(sock);
	return sk;
}