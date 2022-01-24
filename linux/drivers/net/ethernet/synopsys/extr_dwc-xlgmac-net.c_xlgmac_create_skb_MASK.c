#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct xlgmac_pdata {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pages; int /*<<< orphan*/  pages_offset; } ;
struct TYPE_10__ {TYPE_3__ pa; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_off; int /*<<< orphan*/  dma_base; } ;
struct TYPE_7__ {int pages_offset; int /*<<< orphan*/  pages; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma_len; TYPE_1__ pa; int /*<<< orphan*/  dma_off; int /*<<< orphan*/  dma_base; } ;
struct TYPE_11__ {unsigned int hdr_len; TYPE_4__ buf; TYPE_2__ hdr; } ;
struct xlgmac_desc_data {TYPE_5__ rx; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC2 (struct napi_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int) ; 
 TYPE_6__* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct xlgmac_pdata *pdata,
					 struct napi_struct *napi,
					 struct xlgmac_desc_data *desc_data,
					 unsigned int len)
{
	unsigned int copy_len;
	struct sk_buff *skb;
	u8 *packet;

	skb = FUNC2(napi, desc_data->rx.hdr.dma_len);
	if (!skb)
		return NULL;

	/* Start with the header buffer which may contain just the header
	 * or the header plus data
	 */
	FUNC0(pdata->dev, desc_data->rx.hdr.dma_base,
				      desc_data->rx.hdr.dma_off,
				      desc_data->rx.hdr.dma_len,
				      DMA_FROM_DEVICE);

	packet = FUNC3(desc_data->rx.hdr.pa.pages) +
		 desc_data->rx.hdr.pa.pages_offset;
	copy_len = (desc_data->rx.hdr_len) ? desc_data->rx.hdr_len : len;
	copy_len = FUNC1(desc_data->rx.hdr.dma_len, copy_len);
	FUNC5(skb, packet, copy_len);
	FUNC6(skb, copy_len);

	len -= copy_len;
	if (len) {
		/* Add the remaining data as a frag */
		FUNC0(pdata->dev,
					      desc_data->rx.buf.dma_base,
					      desc_data->rx.buf.dma_off,
					      desc_data->rx.buf.dma_len,
					      DMA_FROM_DEVICE);

		FUNC4(skb, FUNC7(skb)->nr_frags,
				desc_data->rx.buf.pa.pages,
				desc_data->rx.buf.pa.pages_offset,
				len, desc_data->rx.buf.dma_len);
		desc_data->rx.buf.pa.pages = NULL;
	}

	return skb;
}