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
struct dpaa_bp {struct device* dev; int /*<<< orphan*/  size; int /*<<< orphan*/  raw_size; } ;
struct device {int dummy; } ;
struct bm_buffer {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bm_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dpaa_bp const*,struct bm_buffer*,int) ; 
 scalar_t__ FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(const struct dpaa_bp *dpaa_bp)
{
	struct device *dev = dpaa_bp->dev;
	struct bm_buffer bmb[8];
	dma_addr_t addr;
	void *new_buf;
	u8 i;

	for (i = 0; i < 8; i++) {
		new_buf = FUNC8(dpaa_bp->raw_size);
		if (FUNC9(!new_buf)) {
			FUNC3(dev, "netdev_alloc_frag() failed, size %zu\n",
				dpaa_bp->raw_size);
			goto release_previous_buffs;
		}
		new_buf = FUNC0(new_buf, SMP_CACHE_BYTES);

		addr = FUNC4(dev, new_buf,
				      dpaa_bp->size, DMA_FROM_DEVICE);
		if (FUNC9(FUNC5(dev, addr))) {
			FUNC3(dpaa_bp->dev, "DMA map failed");
			goto release_previous_buffs;
		}

		bmb[i].data = 0;
		FUNC2(&bmb[i], addr);
	}

release_bufs:
	return FUNC6(dpaa_bp, bmb, i);

release_previous_buffs:
	FUNC1(1, "dpaa_eth: failed to add buffers on Rx\n");

	FUNC2(&bmb[i], 0);
	/* Avoid releasing a completely null buffer; bman_release() requires
	 * at least one buffer.
	 */
	if (FUNC7(i))
		goto release_bufs;

	return 0;
}