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
struct socket {struct sock* sk; } ;
struct sock {int sk_state; int /*<<< orphan*/  sk_priority; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  priority; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote; } ;
struct pppox_sock {TYPE_1__ pppoe_pa; struct net_device* pppoe_dev; int /*<<< orphan*/  num; } ;
struct pppoe_hdr {int ver; int type; int /*<<< orphan*/  length; int /*<<< orphan*/ * tag; int /*<<< orphan*/  sid; scalar_t__ code; } ;
struct net_device {size_t mtu; size_t hard_header_len; scalar_t__ needed_tailroom; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  ETH_P_PPP_SES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct net_device*) ; 
 int PPPOX_CONNECTED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct pppoe_hdr*,struct pppoe_hdr*,int) ; 
 int FUNC8 (char*,struct msghdr*,size_t) ; 
 struct pppox_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 struct pppoe_hdr* FUNC11 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC15 (struct sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct socket *sock, struct msghdr *m,
			 size_t total_len)
{
	struct sk_buff *skb;
	struct sock *sk = sock->sk;
	struct pppox_sock *po = FUNC9(sk);
	int error;
	struct pppoe_hdr hdr;
	struct pppoe_hdr *ph;
	struct net_device *dev;
	char *start;
	int hlen;

	FUNC6(sk);
	if (FUNC14(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED)) {
		error = -ENOTCONN;
		goto end;
	}

	hdr.ver = 1;
	hdr.type = 1;
	hdr.code = 0;
	hdr.sid = po->num;

	dev = po->pppoe_dev;

	error = -EMSGSIZE;
	if (total_len > (dev->mtu + dev->hard_header_len))
		goto end;

	hlen = FUNC0(dev);
	skb = FUNC15(sk, hlen + sizeof(*ph) + total_len +
			   dev->needed_tailroom, 0, GFP_KERNEL);
	if (!skb) {
		error = -ENOMEM;
		goto end;
	}

	/* Reserve space for headers. */
	FUNC12(skb, hlen);
	FUNC13(skb);

	skb->dev = dev;

	skb->priority = sk->sk_priority;
	skb->protocol = FUNC1(ETH_P_PPP_SES);

	ph = FUNC11(skb, total_len + sizeof(struct pppoe_hdr));
	start = (char *)&ph->tag[0];

	error = FUNC8(start, m, total_len);
	if (error < 0) {
		FUNC5(skb);
		goto end;
	}

	error = total_len;
	FUNC2(skb, dev, ETH_P_PPP_SES,
			po->pppoe_pa.remote, NULL, total_len);

	FUNC7(ph, &hdr, sizeof(struct pppoe_hdr));

	ph->length = FUNC4(total_len);

	FUNC3(skb);

end:
	FUNC10(sk);
	return error;
}