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
struct usbnet {int dummy; } ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
struct rndis_data_hdr {void* data_len; void* data_offset; void* msg_len; void* msg_type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned int RNDIS_MSG_PACKET ; 
 struct rndis_data_hdr* FUNC0 (struct sk_buff*,int) ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct rndis_data_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 

struct sk_buff *
FUNC12(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
	struct rndis_data_hdr	*hdr;
	struct sk_buff		*skb2;
	unsigned		len = skb->len;

	if (FUNC3(!FUNC6(skb))) {
		int	room = FUNC8(skb);

		/* enough head room as-is? */
		if (FUNC11((sizeof *hdr) <= room))
			goto fill;

		/* enough room, but needs to be readjusted? */
		room += FUNC10(skb);
		if (FUNC3((sizeof *hdr) <= room)) {
			skb->data = FUNC4(skb->head + sizeof *hdr,
					    skb->data, len);
			FUNC9(skb, len);
			goto fill;
		}
	}

	/* create a new skb, with the correct size (and tailpad) */
	skb2 = FUNC7(skb, sizeof *hdr, 1, flags);
	FUNC2(skb);
	if (FUNC11(!skb2))
		return skb2;
	skb = skb2;

	/* fill out the RNDIS header.  we won't bother trying to batch
	 * packets; Linux minimizes wasted bandwidth through tx queues.
	 */
fill:
	hdr = FUNC0(skb, sizeof *hdr);
	FUNC5(hdr, 0, sizeof *hdr);
	hdr->msg_type = FUNC1(RNDIS_MSG_PACKET);
	hdr->msg_len = FUNC1(skb->len);
	hdr->data_offset = FUNC1(sizeof(*hdr) - 8);
	hdr->data_len = FUNC1(len);

	/* FIXME make the last packet always be short ... */
	return skb;
}