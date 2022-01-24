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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct gtp_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int encap_type; } ;

/* Variables and functions */
#define  UDP_ENCAP_GTP0 129 
#define  UDP_ENCAP_GTP1U 128 
 int FUNC0 (struct gtp_dev*,struct sk_buff*) ; 
 int FUNC1 (struct gtp_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct gtp_dev* FUNC4 (struct sock*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct gtp_dev *gtp;
	int ret = 0;

	gtp = FUNC4(sk);
	if (!gtp)
		return 1;

	FUNC3(gtp->dev, "encap_recv sk=%p\n", sk);

	switch (FUNC5(sk)->encap_type) {
	case UDP_ENCAP_GTP0:
		FUNC3(gtp->dev, "received GTP0 packet\n");
		ret = FUNC0(gtp, skb);
		break;
	case UDP_ENCAP_GTP1U:
		FUNC3(gtp->dev, "received GTP1U packet\n");
		ret = FUNC1(gtp, skb);
		break;
	default:
		ret = -1; /* Shouldn't happen. */
	}

	switch (ret) {
	case 1:
		FUNC3(gtp->dev, "pass up to the process\n");
		break;
	case 0:
		break;
	case -1:
		FUNC3(gtp->dev, "GTP packet has been dropped\n");
		FUNC2(skb);
		ret = 0;
		break;
	}

	return ret;
}