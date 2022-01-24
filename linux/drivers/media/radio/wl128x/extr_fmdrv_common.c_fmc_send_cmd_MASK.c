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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct fmdev {int /*<<< orphan*/  resp_skb_lock; struct sk_buff* resp_skb; int /*<<< orphan*/  maintask_comp; } ;
struct fm_event_msg_hdr {int status; unsigned int dlen; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FM_DRV_TX_TIMEOUT ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct fmdev *fmdev, u8 fm_op, u16 type, void *payload,
		unsigned int payload_len, void *response, int *response_len)
{
	struct sk_buff *skb;
	struct fm_event_msg_hdr *evt_hdr;
	unsigned long flags;
	int ret;

	FUNC2(&fmdev->maintask_comp);
	ret = FUNC0(fmdev, fm_op, type, payload, payload_len,
			    &fmdev->maintask_comp);
	if (ret)
		return ret;

	if (!FUNC9(&fmdev->maintask_comp,
					 FM_DRV_TX_TIMEOUT)) {
		FUNC1("Timeout(%d sec),didn't get regcompletion signal from RX tasklet\n",
			   FUNC3(FM_DRV_TX_TIMEOUT) / 1000);
		return -ETIMEDOUT;
	}
	if (!fmdev->resp_skb) {
		FUNC1("Response SKB is missing\n");
		return -EFAULT;
	}
	FUNC7(&fmdev->resp_skb_lock, flags);
	skb = fmdev->resp_skb;
	fmdev->resp_skb = NULL;
	FUNC8(&fmdev->resp_skb_lock, flags);

	evt_hdr = (void *)skb->data;
	if (evt_hdr->status != 0) {
		FUNC1("Received event pkt status(%d) is not zero\n",
			   evt_hdr->status);
		FUNC4(skb);
		return -EIO;
	}
	/* Send response data to caller */
	if (response != NULL && response_len != NULL && evt_hdr->dlen &&
	    evt_hdr->dlen <= payload_len) {
		/* Skip header info and copy only response data */
		FUNC6(skb, sizeof(struct fm_event_msg_hdr));
		FUNC5(response, skb->data, evt_hdr->dlen);
		*response_len = evt_hdr->dlen;
	} else if (response_len != NULL && evt_hdr->dlen == 0) {
		*response_len = 0;
	}
	FUNC4(skb);

	return 0;
}