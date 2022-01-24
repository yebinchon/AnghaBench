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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct xdp_buff {char* data_hard_start; char* data; char* data_end; int /*<<< orphan*/ * rxq; } ;
struct virtio_net_hdr {scalar_t__ gso_type; } ;
struct tun_struct {int /*<<< orphan*/  xdp_prog; } ;
struct tun_file {int /*<<< orphan*/  xdp_rxq; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct page_frag {int offset; int /*<<< orphan*/  page; } ;
struct iov_iter {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {struct page_frag task_frag; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SMP_CACHE_BYTES ; 
 int TUN_RX_PAD ; 
 scalar_t__ XDP_PACKET_HEADROOM ; 
 int XDP_PASS ; 
 scalar_t__ XDP_REDIRECT ; 
 scalar_t__ XDP_TX ; 
 struct sk_buff* FUNC3 (struct tun_file*,struct page_frag*,char*,int,int,int) ; 
 scalar_t__ FUNC4 (struct bpf_prog*,struct xdp_buff*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int,int,struct iov_iter*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,struct page_frag*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct tun_struct*,struct bpf_prog*,struct xdp_buff*,scalar_t__) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct xdp_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC19(struct tun_struct *tun,
				     struct tun_file *tfile,
				     struct iov_iter *from,
				     struct virtio_net_hdr *hdr,
				     int len, int *skb_xdp)
{
	struct page_frag *alloc_frag = &current->task_frag;
	struct bpf_prog *xdp_prog;
	int buflen = FUNC2(sizeof(struct skb_shared_info));
	char *buf;
	size_t copied;
	int pad = TUN_RX_PAD;
	int err = 0;

	FUNC12();
	xdp_prog = FUNC11(tun->xdp_prog);
	if (xdp_prog)
		pad += XDP_PACKET_HEADROOM;
	buflen += FUNC2(len + pad);
	FUNC13();

	alloc_frag->offset = FUNC0((u64)alloc_frag->offset, SMP_CACHE_BYTES);
	if (FUNC16(!FUNC14(buflen, alloc_frag, GFP_KERNEL)))
		return FUNC1(-ENOMEM);

	buf = (char *)FUNC9(alloc_frag->page) + alloc_frag->offset;
	copied = FUNC5(alloc_frag->page,
				     alloc_frag->offset + pad,
				     len, from);
	if (copied != len)
		return FUNC1(-EFAULT);

	/* There's a small window that XDP may be set after the check
	 * of xdp_prog above, this should be rare and for simplicity
	 * we do XDP on skb in case the headroom is not enough.
	 */
	if (hdr->gso_type || !xdp_prog) {
		*skb_xdp = 1;
		return FUNC3(tfile, alloc_frag, buf, buflen, len,
				       pad);
	}

	*skb_xdp = 0;

	FUNC7();
	FUNC12();
	xdp_prog = FUNC11(tun->xdp_prog);
	if (xdp_prog) {
		struct xdp_buff xdp;
		u32 act;

		xdp.data_hard_start = buf;
		xdp.data = buf + pad;
		FUNC18(&xdp);
		xdp.data_end = xdp.data + len;
		xdp.rxq = &tfile->xdp_rxq;

		act = FUNC4(xdp_prog, &xdp);
		if (act == XDP_REDIRECT || act == XDP_TX) {
			FUNC6(alloc_frag->page);
			alloc_frag->offset += buflen;
		}
		err = FUNC15(tun, xdp_prog, &xdp, act);
		if (err < 0)
			goto err_xdp;
		if (err == XDP_REDIRECT)
			FUNC17();
		if (err != XDP_PASS)
			goto out;

		pad = xdp.data - xdp.data_hard_start;
		len = xdp.data_end - xdp.data;
	}
	FUNC13();
	FUNC8();

	return FUNC3(tfile, alloc_frag, buf, buflen, len, pad);

err_xdp:
	FUNC10(alloc_frag->page);
out:
	FUNC13();
	FUNC8();
	return NULL;
}