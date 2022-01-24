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
struct virtqueue {int dummy; } ;
struct virtnet_info {int max_queue_pairs; TYPE_2__* rq; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; TYPE_1__* sq; } ;
struct TYPE_4__ {struct virtqueue* vq; } ;
struct TYPE_3__ {struct virtqueue* vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct virtnet_info *vi)
{
	void *buf;
	int i;

	for (i = 0; i < vi->max_queue_pairs; i++) {
		struct virtqueue *vq = vi->sq[i].vq;
		while ((buf = FUNC6(vq)) != NULL) {
			if (!FUNC2(buf))
				FUNC0(buf);
			else
				FUNC7(FUNC3(buf));
		}
	}

	for (i = 0; i < vi->max_queue_pairs; i++) {
		struct virtqueue *vq = vi->rq[i].vq;

		while ((buf = FUNC6(vq)) != NULL) {
			if (vi->mergeable_rx_bufs) {
				FUNC4(FUNC5(buf));
			} else if (vi->big_packets) {
				FUNC1(&vi->rq[i], buf);
			} else {
				FUNC4(FUNC5(buf));
			}
		}
	}
}