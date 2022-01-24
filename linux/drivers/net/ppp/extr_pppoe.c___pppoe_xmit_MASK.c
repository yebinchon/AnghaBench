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
struct sock {int sk_state; } ;
struct sk_buff {int len; struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  remote; } ;
struct pppox_sock {TYPE_1__ pppoe_pa; int /*<<< orphan*/  num; struct net_device* pppoe_dev; } ;
struct pppoe_hdr {int ver; int type; int /*<<< orphan*/  length; int /*<<< orphan*/  sid; scalar_t__ code; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PPP_SES ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int PPPOX_CONNECTED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct pppoe_hdr* FUNC7 (struct sk_buff*) ; 
 struct pppox_sock* FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct sk_buff *skb)
{
	struct pppox_sock *po = FUNC8(sk);
	struct net_device *dev = po->pppoe_dev;
	struct pppoe_hdr *ph;
	int data_len = skb->len;

	/* The higher-level PPP code (ppp_unregister_channel()) ensures the PPP
	 * xmit operations conclude prior to an unregistration call.  Thus
	 * sk->sk_state cannot change, so we don't need to do lock_sock().
	 * But, we also can't do a lock_sock since that introduces a potential
	 * deadlock as we'd reverse the lock ordering used when calling
	 * ppp_unregister_channel().
	 */

	if (FUNC11(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED))
		goto abort;

	if (!dev)
		goto abort;

	/* Copy the data if there is no space for the header or if it's
	 * read-only.
	 */
	if (FUNC9(skb, FUNC0(dev) + sizeof(*ph)))
		goto abort;

	FUNC1(skb, sizeof(*ph));
	FUNC10(skb);

	ph = FUNC7(skb);
	ph->ver	= 1;
	ph->type = 1;
	ph->code = 0;
	ph->sid	= po->num;
	ph->length = FUNC5(data_len);

	skb->protocol = FUNC2(ETH_P_PPP_SES);
	skb->dev = dev;

	FUNC3(skb, dev, ETH_P_PPP_SES,
			po->pppoe_pa.remote, NULL, data_len);

	FUNC4(skb);
	return 1;

abort:
	FUNC6(skb);
	return 1;
}