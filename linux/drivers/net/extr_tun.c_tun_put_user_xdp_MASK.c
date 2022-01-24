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
struct xdp_frame {size_t len; struct virtio_net_hdr* data; } ;
struct virtio_net_hdr {int /*<<< orphan*/  member_0; } ;
struct tun_struct {int flags; int /*<<< orphan*/  pcpu_stats; int /*<<< orphan*/  vnet_hdr_sz; } ;
struct tun_pcpu_stats {size_t tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct tun_file {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  gso ;

/* Variables and functions */
 size_t EFAULT ; 
 size_t EINVAL ; 
 int IFF_VNET_HDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct virtio_net_hdr*,size_t,struct iov_iter*) ; 
 struct tun_pcpu_stats* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,int) ; 
 int FUNC4 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static ssize_t FUNC9(struct tun_struct *tun,
				struct tun_file *tfile,
				struct xdp_frame *xdp_frame,
				struct iov_iter *iter)
{
	int vnet_hdr_sz = 0;
	size_t size = xdp_frame->len;
	struct tun_pcpu_stats *stats;
	size_t ret;

	if (tun->flags & IFF_VNET_HDR) {
		struct virtio_net_hdr gso = { 0 };

		vnet_hdr_sz = FUNC0(tun->vnet_hdr_sz);
		if (FUNC8(FUNC4(iter) < vnet_hdr_sz))
			return -EINVAL;
		if (FUNC8(FUNC1(&gso, sizeof(gso), iter) !=
			     sizeof(gso)))
			return -EFAULT;
		FUNC3(iter, vnet_hdr_sz - sizeof(gso));
	}

	ret = FUNC1(xdp_frame->data, size, iter) + vnet_hdr_sz;

	stats = FUNC2(tun->pcpu_stats);
	FUNC6(&stats->syncp);
	stats->tx_packets++;
	stats->tx_bytes += ret;
	FUNC7(&stats->syncp);
	FUNC5(tun->pcpu_stats);

	return ret;
}