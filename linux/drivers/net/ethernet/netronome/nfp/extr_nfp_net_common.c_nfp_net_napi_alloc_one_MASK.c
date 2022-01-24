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
struct page {int dummy; } ;
struct nfp_net_dp {int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  dev; int /*<<< orphan*/  fl_bufsz; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 struct page* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net_dp*,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net_dp*,char*) ; 
 void* FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void *FUNC8(struct nfp_net_dp *dp, dma_addr_t *dma_addr)
{
	void *frag;

	if (!dp->xdp_prog) {
		frag = FUNC2(dp->fl_bufsz);
		if (FUNC7(!frag))
			return NULL;
	} else {
		struct page *page;

		page = FUNC0();
		if (FUNC7(!page))
			return NULL;
		frag = FUNC6(page);
	}

	*dma_addr = FUNC3(dp, frag);
	if (FUNC1(dp->dev, *dma_addr)) {
		FUNC4(frag, dp->xdp_prog);
		FUNC5(dp, "Failed to map DMA RX buffer\n");
		return NULL;
	}

	return frag;
}