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
struct xdp_frame {scalar_t__ metasize; int /*<<< orphan*/  len; struct virtio_net_hdr_mrg_rxbuf* data; int /*<<< orphan*/  headroom; } ;
struct virtnet_info {int /*<<< orphan*/  hdr_len; } ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct send_queue {int /*<<< orphan*/  sg; int /*<<< orphan*/  vq; } ;

/* Variables and functions */
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_net_hdr_mrg_rxbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct virtio_net_hdr_mrg_rxbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC5(struct virtnet_info *vi,
				   struct send_queue *sq,
				   struct xdp_frame *xdpf)
{
	struct virtio_net_hdr_mrg_rxbuf *hdr;
	int err;

	/* virtqueue want to use data area in-front of packet */
	if (FUNC2(xdpf->metasize > 0))
		return -EOPNOTSUPP;

	if (FUNC2(xdpf->headroom < vi->hdr_len))
		return -EOVERFLOW;

	/* Make room for virtqueue hdr (also change xdpf->headroom?) */
	xdpf->data -= vi->hdr_len;
	/* Zero header and leave csum up to XDP layers */
	hdr = xdpf->data;
	FUNC0(hdr, 0, vi->hdr_len);
	xdpf->len   += vi->hdr_len;

	FUNC1(sq->sg, xdpf->data, xdpf->len);

	err = FUNC3(sq->vq, sq->sg, 1, FUNC4(xdpf),
				   GFP_ATOMIC);
	if (FUNC2(err))
		return -ENOSPC; /* Caller handle free/refcnt */

	return 0;
}