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
struct TYPE_2__ {struct sock* sk; } ;
struct tun_file {TYPE_1__ socket; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t data_len; size_t len; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,size_t) ; 
 struct sk_buff* FUNC3 (struct sock*,size_t,size_t,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct tun_file *tfile,
				     size_t prepad, size_t len,
				     size_t linear, int noblock)
{
	struct sock *sk = tfile->socket.sk;
	struct sk_buff *skb;
	int err;

	/* Under a page?  Don't bother with paged skb. */
	if (prepad + len < PAGE_SIZE || !linear)
		linear = len;

	skb = FUNC3(sk, prepad + linear, len - linear, noblock,
				   &err, 0);
	if (!skb)
		return FUNC0(err);

	FUNC2(skb, prepad);
	FUNC1(skb, linear);
	skb->data_len = len - linear;
	skb->len += len - linear;

	return skb;
}