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
struct qm_sg_entry {int dummy; } ;
struct qm_fd {int /*<<< orphan*/  bpid; } ;
struct net_device {int dummy; } ;
struct dpaa_bp {int /*<<< orphan*/  dev; int /*<<< orphan*/  size; } ;
struct bm_buffer {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct bm_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dpaa_bp*,struct bm_buffer*,int) ; 
 struct dpaa_bp* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qm_sg_entry*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qm_fd const*) ; 
 scalar_t__ FUNC10 (struct qm_fd const*) ; 
 int FUNC11 (struct qm_fd const*) ; 
 scalar_t__ qm_fd_sg ; 

__attribute__((used)) static void FUNC12(const struct net_device *net_dev,
			    const struct qm_fd *fd)
{
	struct qm_sg_entry *sgt;
	struct dpaa_bp *dpaa_bp;
	struct bm_buffer bmb;
	dma_addr_t addr;
	void *vaddr;

	bmb.data = 0;
	FUNC0(&bmb, FUNC9(fd));

	dpaa_bp = FUNC6(fd->bpid);
	if (!dpaa_bp)
		return;

	if (FUNC10(fd) == qm_fd_sg) {
		vaddr = FUNC8(FUNC9(fd));
		sgt = vaddr + FUNC11(fd);

		FUNC4(dpaa_bp->dev, FUNC9(fd), dpaa_bp->size,
				 DMA_FROM_DEVICE);

		FUNC7(sgt);

		addr = FUNC2(dpaa_bp->dev, vaddr, dpaa_bp->size,
				      DMA_FROM_DEVICE);
		if (FUNC3(dpaa_bp->dev, addr)) {
			FUNC1(dpaa_bp->dev, "DMA mapping failed");
			return;
		}
		FUNC0(&bmb, addr);
	}

	FUNC5(dpaa_bp, &bmb, 1);
}