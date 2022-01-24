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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {struct sk_buff* next; scalar_t__ len; scalar_t__ data; } ;
struct htt_rx_in_ord_msdu_desc {int /*<<< orphan*/  msdu_len; scalar_t__ reserved; int /*<<< orphan*/  msdu_paddr; } ;
struct htt_rx_desc {int dummy; } ;
struct ath10k_htt {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  HTT_RX_BUF_SIZE ; 
 int /*<<< orphan*/  HTT_RX_MSDU_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff*,int) ; 
 struct sk_buff* FUNC3 (struct ath10k_htt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,struct htt_rx_desc*,int) ; 

__attribute__((used)) static int FUNC9(struct ath10k_htt *htt,
					     struct sk_buff *msdu,
					     struct htt_rx_in_ord_msdu_desc **msdu_desc)
{
	struct ath10k *ar = htt->ar;
	u32 paddr;
	struct sk_buff *frag_buf;
	struct sk_buff *prev_frag_buf;
	u8 last_frag;
	struct htt_rx_in_ord_msdu_desc *ind_desc = *msdu_desc;
	struct htt_rx_desc *rxd;
	int amsdu_len = FUNC0(ind_desc->msdu_len);

	rxd = (void *)msdu->data;
	FUNC8(ar, rxd, sizeof(*rxd));

	FUNC7(msdu, sizeof(struct htt_rx_desc));
	FUNC6(msdu, sizeof(struct htt_rx_desc));
	FUNC7(msdu, FUNC5(amsdu_len, HTT_RX_MSDU_SIZE));
	amsdu_len -= msdu->len;

	last_frag = ind_desc->reserved;
	if (last_frag) {
		if (amsdu_len) {
			FUNC4(ar, "invalid amsdu len %u, left %d",
				    FUNC0(ind_desc->msdu_len),
				    amsdu_len);
		}
		return 0;
	}

	ind_desc++;
	paddr = FUNC1(ind_desc->msdu_paddr);
	frag_buf = FUNC3(htt, paddr);
	if (!frag_buf) {
		FUNC4(ar, "failed to pop frag-1 paddr: 0x%x", paddr);
		return -ENOENT;
	}

	FUNC7(frag_buf, FUNC5(amsdu_len, HTT_RX_BUF_SIZE));
	FUNC2(msdu, frag_buf, amsdu_len);

	amsdu_len -= frag_buf->len;
	prev_frag_buf = frag_buf;
	last_frag = ind_desc->reserved;
	while (!last_frag) {
		ind_desc++;
		paddr = FUNC1(ind_desc->msdu_paddr);
		frag_buf = FUNC3(htt, paddr);
		if (!frag_buf) {
			FUNC4(ar, "failed to pop frag-n paddr: 0x%x",
				    paddr);
			prev_frag_buf->next = NULL;
			return -ENOENT;
		}

		FUNC7(frag_buf, FUNC5(amsdu_len, HTT_RX_BUF_SIZE));
		last_frag = ind_desc->reserved;
		amsdu_len -= frag_buf->len;

		prev_frag_buf->next = frag_buf;
		prev_frag_buf = frag_buf;
	}

	if (amsdu_len) {
		FUNC4(ar, "invalid amsdu len %u, left %d",
			    FUNC0(ind_desc->msdu_len), amsdu_len);
	}

	*msdu_desc = ind_desc;

	prev_frag_buf->next = NULL;
	return 0;
}