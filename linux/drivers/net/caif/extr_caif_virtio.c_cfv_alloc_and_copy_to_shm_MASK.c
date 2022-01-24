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
typedef  int u8 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  cb; } ;
struct scatterlist {int dummy; } ;
struct cfv_info {scalar_t__ tx_hr; scalar_t__ tx_tr; scalar_t__ mtu; scalar_t__ rx_hr; int /*<<< orphan*/  genpool; int /*<<< orphan*/  ndev; } ;
struct caif_payload_info {int hdr_len; } ;
struct buf_info {scalar_t__ size; void* vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IP_HDR_ALIGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buf_info*) ; 
 struct buf_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,void*,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct buf_info *FUNC7(struct cfv_info *cfv,
						       struct sk_buff *skb,
						       struct scatterlist *sg)
{
	struct caif_payload_info *info = (void *)&skb->cb;
	struct buf_info *buf_info = NULL;
	u8 pad_len, hdr_ofs;

	if (!cfv->genpool)
		goto err;

	if (FUNC6(cfv->tx_hr + skb->len + cfv->tx_tr > cfv->mtu)) {
		FUNC3(cfv->ndev, "Invalid packet len (%d > %d)\n",
			    cfv->tx_hr + skb->len + cfv->tx_tr, cfv->mtu);
		goto err;
	}

	buf_info = FUNC2(sizeof(struct buf_info), GFP_ATOMIC);
	if (FUNC6(!buf_info))
		goto err;

	/* Make the IP header aligned in tbe buffer */
	hdr_ofs = cfv->tx_hr + info->hdr_len;
	pad_len = hdr_ofs & (IP_HDR_ALIGN - 1);
	buf_info->size = cfv->tx_hr + skb->len + cfv->tx_tr + pad_len;

	/* allocate dma memory buffer */
	buf_info->vaddr = (void *)FUNC0(cfv->genpool, buf_info->size);
	if (FUNC6(!buf_info->vaddr))
		goto err;

	/* copy skbuf contents to send buffer */
	FUNC5(skb, 0, buf_info->vaddr + cfv->tx_hr + pad_len, skb->len);
	FUNC4(sg, buf_info->vaddr + pad_len,
		    skb->len + cfv->tx_hr + cfv->rx_hr);

	return buf_info;
err:
	FUNC1(buf_info);
	return NULL;
}