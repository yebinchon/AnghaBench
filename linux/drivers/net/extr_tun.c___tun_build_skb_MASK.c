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
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct tun_file {TYPE_1__ socket; } ;
struct sk_buff {int dummy; } ;
struct page_frag {int offset; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct tun_file *tfile,
				       struct page_frag *alloc_frag, char *buf,
				       int buflen, int len, int pad)
{
	struct sk_buff *skb = FUNC1(buf, buflen);

	if (!skb)
		return FUNC0(-ENOMEM);

	FUNC4(skb, pad);
	FUNC3(skb, len);
	FUNC5(skb, tfile->socket.sk);

	FUNC2(alloc_frag->page);
	alloc_frag->offset += buflen;

	return skb;
}