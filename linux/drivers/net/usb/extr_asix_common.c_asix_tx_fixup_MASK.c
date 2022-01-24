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
typedef  int u32 ;
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  padbytes ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 void* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 void* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC13(struct usbnet *dev, struct sk_buff *skb,
			      gfp_t flags)
{
	int padlen;
	int headroom = FUNC6(skb);
	int tailroom = FUNC11(skb);
	u32 packet_len;
	u32 padbytes = 0xffff0000;
	void *ptr;

	padlen = ((skb->len + 4) & (dev->maxpacket - 1)) ? 0 : 4;

	/* We need to push 4 bytes in front of frame (packet_len)
	 * and maybe add 4 bytes after the end (if padlen is 4)
	 *
	 * Avoid skb_copy_expand() expensive call, using following rules :
	 * - We are allowed to push 4 bytes in headroom if skb_header_cloned()
	 *   is false (and if we have 4 bytes of headroom)
	 * - We are allowed to put 4 bytes at tail if skb_cloned()
	 *   is false (and if we have 4 bytes of tailroom)
	 *
	 * TCP packets for example are cloned, but __skb_header_release()
	 * was called in tcp stack, allowing us to use headroom for our needs.
	 */
	if (!FUNC5(skb) &&
	    !(padlen && FUNC3(skb)) &&
	    headroom + tailroom >= 4 + padlen) {
		/* following should not happen, but better be safe */
		if (headroom < 4 ||
		    tailroom < padlen) {
			skb->data = FUNC1(skb->head + 4, skb->data, skb->len);
			FUNC9(skb, skb->len);
		}
	} else {
		struct sk_buff *skb2;

		skb2 = FUNC4(skb, 4, padlen, flags);
		FUNC0(skb);
		skb = skb2;
		if (!skb)
			return NULL;
	}

	packet_len = ((skb->len ^ 0x0000ffff) << 16) + skb->len;
	ptr = FUNC7(skb, 4);
	FUNC2(packet_len, ptr);

	if (padlen) {
		FUNC2(padbytes, FUNC10(skb));
		FUNC8(skb, sizeof(padbytes));
	}

	FUNC12(skb, 1, 0);
	return skb;
}