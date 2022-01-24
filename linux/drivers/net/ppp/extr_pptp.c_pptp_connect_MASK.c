#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_12__ {TYPE_2__ sin_addr; int /*<<< orphan*/  call_id; } ;
struct TYPE_13__ {TYPE_5__ pptp; } ;
struct sockaddr_pppox {scalar_t__ sa_protocol; TYPE_6__ sa_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct TYPE_10__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_11__ {TYPE_3__ sin_addr; } ;
struct pptp_opt {TYPE_5__ dst_addr; TYPE_4__ src_addr; } ;
struct pptp_gre_header {int dummy; } ;
struct TYPE_14__ {int hdrlen; scalar_t__ mtu; int /*<<< orphan*/ * ops; struct sock* private; } ;
struct TYPE_8__ {struct pptp_opt pptp; } ;
struct pppox_sock {TYPE_7__ chan; TYPE_1__ proto; } ;
struct flowi4 {int dummy; } ;

/* Variables and functions */
 int EALREADY ; 
 int EBUSY ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int PPPOX_CONNECTED ; 
 int PPPOX_DEAD ; 
 scalar_t__ PPP_MRU ; 
 scalar_t__ PPTP_HEADER_OVERHEAD ; 
 scalar_t__ PX_PROTO_PPTP ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct rtable* FUNC3 (int /*<<< orphan*/ ,struct flowi4*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_7__*) ; 
 struct pppox_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  pptp_chan_ops ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct sockaddr *uservaddr,
	int sockaddr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct sockaddr_pppox *sp = (struct sockaddr_pppox *) uservaddr;
	struct pppox_sock *po = FUNC7(sk);
	struct pptp_opt *opt = &po->proto.pptp;
	struct rtable *rt;
	struct flowi4 fl4;
	int error = 0;

	if (sockaddr_len < sizeof(struct sockaddr_pppox))
		return -EINVAL;

	if (sp->sa_protocol != PX_PROTO_PPTP)
		return -EINVAL;

	if (FUNC5(sp->sa_addr.pptp.call_id, sp->sa_addr.pptp.sin_addr.s_addr))
		return -EALREADY;

	FUNC4(sk);
	/* Check for already bound sockets */
	if (sk->sk_state & PPPOX_CONNECTED) {
		error = -EBUSY;
		goto end;
	}

	/* Check for already disconnected sockets, on attempts to disconnect */
	if (sk->sk_state & PPPOX_DEAD) {
		error = -EALREADY;
		goto end;
	}

	if (!opt->src_addr.sin_addr.s_addr || !sp->sa_addr.pptp.sin_addr.s_addr) {
		error = -EINVAL;
		goto end;
	}

	po->chan.private = sk;
	po->chan.ops = &pptp_chan_ops;

	rt = FUNC3(FUNC11(sk), &fl4, sk,
				   opt->dst_addr.sin_addr.s_addr,
				   opt->src_addr.sin_addr.s_addr,
				   0, 0,
				   IPPROTO_GRE, FUNC1(sk), 0);
	if (FUNC0(rt)) {
		error = -EHOSTUNREACH;
		goto end;
	}
	FUNC10(sk, &rt->dst);

	po->chan.mtu = FUNC2(&rt->dst);
	if (!po->chan.mtu)
		po->chan.mtu = PPP_MRU;
	po->chan.mtu -= PPTP_HEADER_OVERHEAD;

	po->chan.hdrlen = 2 + sizeof(struct pptp_gre_header);
	error = FUNC6(&po->chan);
	if (error) {
		FUNC8("PPTP: failed to register PPP channel (%d)\n", error);
		goto end;
	}

	opt->dst_addr = sp->sa_addr.pptp;
	sk->sk_state |= PPPOX_CONNECTED;

 end:
	FUNC9(sk);
	return error;
}