#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_sdio {int n_rx_pkts; TYPE_1__* rx_pkts; } ;
struct ath10k_htc_hdr {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  eid; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  alloc_len; } ;

/* Variables and functions */
 scalar_t__ ATH10K_HIF_MBOX_BLOCK_SIZE ; 
 int ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK ; 
 int ATH10K_HTC_FLAG_BUNDLE_MASK ; 
 int ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH ; 
 size_t ATH10K_SDIO_MAX_BUFFER_SIZE ; 
 int ATH10K_SDIO_MAX_RX_MSGS ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t FUNC0 (struct ath10k_sdio*,size_t) ; 
 int FUNC1 (struct ath10k*,TYPE_1__*,struct ath10k_htc_hdr*,size_t,size_t,size_t*) ; 
 int FUNC2 (TYPE_1__*,size_t,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct ath10k_sdio* FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar,
				     u32 lookaheads[], int n_lookaheads)
{
	struct ath10k_sdio *ar_sdio = FUNC4(ar);
	struct ath10k_htc_hdr *htc_hdr;
	size_t full_len, act_len;
	bool last_in_bundle;
	int ret, i;

	if (n_lookaheads > ATH10K_SDIO_MAX_RX_MSGS) {
		FUNC5(ar,
			    "the total number of pkgs to be fetched (%u) exceeds maximum %u\n",
			    n_lookaheads,
			    ATH10K_SDIO_MAX_RX_MSGS);
		ret = -ENOMEM;
		goto err;
	}

	for (i = 0; i < n_lookaheads; i++) {
		htc_hdr = (struct ath10k_htc_hdr *)&lookaheads[i];
		last_in_bundle = false;

		if (FUNC6(htc_hdr->len) >
		    ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH) {
			FUNC5(ar,
				    "payload length %d exceeds max htc length: %zu\n",
				    FUNC6(htc_hdr->len),
				    ATH10K_HTC_MBOX_MAX_PAYLOAD_LENGTH);
			ret = -ENOMEM;
			goto err;
		}

		act_len = FUNC6(htc_hdr->len) + sizeof(*htc_hdr);
		full_len = FUNC0(ar_sdio, act_len);

		if (full_len > ATH10K_SDIO_MAX_BUFFER_SIZE) {
			FUNC5(ar,
				    "rx buffer requested with invalid htc_hdr length (%d, 0x%x): %d\n",
				    htc_hdr->eid, htc_hdr->flags,
				    FUNC6(htc_hdr->len));
			ret = -EINVAL;
			goto err;
		}

		if (htc_hdr->flags & ATH10K_HTC_FLAG_BUNDLE_MASK) {
			/* HTC header indicates that every packet to follow
			 * has the same padded length so that it can be
			 * optimally fetched as a full bundle.
			 */
			size_t bndl_cnt;

			ret = FUNC1(ar,
								&ar_sdio->rx_pkts[i],
								htc_hdr,
								full_len,
								act_len,
								&bndl_cnt);

			if (ret) {
				FUNC5(ar, "alloc_bundle error %d\n", ret);
				goto err;
			}

			n_lookaheads += bndl_cnt;
			i += bndl_cnt;
			/*Next buffer will be the last in the bundle */
			last_in_bundle = true;
		}

		/* Allocate skb for packet. If the packet had the
		 * ATH10K_HTC_FLAG_BUNDLE_MASK flag set, all bundled
		 * packet skb's have been allocated in the previous step.
		 */
		if (htc_hdr->flags & ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK)
			full_len += ATH10K_HIF_MBOX_BLOCK_SIZE;

		ret = FUNC2(&ar_sdio->rx_pkts[i],
						    act_len,
						    full_len,
						    last_in_bundle,
						    last_in_bundle);
		if (ret) {
			FUNC5(ar, "alloc_rx_pkt error %d\n", ret);
			goto err;
		}
	}

	ar_sdio->n_rx_pkts = i;

	return 0;

err:
	for (i = 0; i < ATH10K_SDIO_MAX_RX_MSGS; i++) {
		if (!ar_sdio->rx_pkts[i].alloc_len)
			break;
		FUNC3(&ar_sdio->rx_pkts[i]);
	}

	return ret;
}