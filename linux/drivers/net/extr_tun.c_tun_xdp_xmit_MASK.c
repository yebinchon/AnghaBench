#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct xdp_frame {int dummy; } ;
struct tun_struct {TYPE_1__* pcpu_stats; int /*<<< orphan*/ * tfiles; int /*<<< orphan*/  numqueues; } ;
struct TYPE_4__ {int /*<<< orphan*/  producer_lock; } ;
struct tun_file {TYPE_2__ tx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t XDP_XMIT_FLAGS_MASK ; 
 size_t XDP_XMIT_FLUSH ; 
 scalar_t__ FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct tun_file*) ; 
 struct tun_struct* FUNC3 (struct net_device*) ; 
 struct tun_file* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 size_t FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct xdp_frame*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev, int n,
			struct xdp_frame **frames, u32 flags)
{
	struct tun_struct *tun = FUNC3(dev);
	struct tun_file *tfile;
	u32 numqueues;
	int drops = 0;
	int cnt = n;
	int i;

	if (FUNC12(flags & ~XDP_XMIT_FLAGS_MASK))
		return -EINVAL;

	FUNC5();

resample:
	numqueues = FUNC0(tun->numqueues);
	if (!numqueues) {
		FUNC6();
		return -ENXIO; /* Caller will free/return all frames */
	}

	tfile = FUNC4(tun->tfiles[FUNC7() %
					    numqueues]);
	if (FUNC12(!tfile))
		goto resample;

	FUNC8(&tfile->tx_ring.producer_lock);
	for (i = 0; i < n; i++) {
		struct xdp_frame *xdp = frames[i];
		/* Encode the XDP flag into lowest bit for consumer to differ
		 * XDP buffer from sk_buff.
		 */
		void *frame = FUNC11(xdp);

		if (FUNC1(&tfile->tx_ring, frame)) {
			FUNC10(tun->pcpu_stats->tx_dropped);
			FUNC13(xdp);
			drops++;
		}
	}
	FUNC9(&tfile->tx_ring.producer_lock);

	if (flags & XDP_XMIT_FLUSH)
		FUNC2(tfile);

	FUNC6();
	return cnt - drops;
}