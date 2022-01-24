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
typedef  int u64 ;
struct rvu_pfvf {TYPE_1__* rss_ctx; } ;
struct rvu {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ iova; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_RSS_INDIR_TBL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct rvu *rvu, int blkaddr,
			      struct rvu_pfvf *pfvf, int nixlf,
			      int rss_sz, int rss_grps, int hwctx_size)
{
	int err, grp, num_indices;

	/* RSS is not requested for this NIXLF */
	if (!rss_sz)
		return 0;
	num_indices = rss_sz * rss_grps;

	/* Alloc NIX RSS HW context memory and config the base */
	err = FUNC5(rvu->dev, &pfvf->rss_ctx, num_indices, hwctx_size);
	if (err)
		return err;

	FUNC6(rvu, blkaddr, FUNC1(nixlf),
		    (u64)pfvf->rss_ctx->iova);

	/* Config full RSS table size, enable RSS and caching */
	FUNC6(rvu, blkaddr, FUNC2(nixlf),
		    FUNC0(36) | FUNC0(4) |
		    FUNC4(num_indices / MAX_RSS_INDIR_TBL_SIZE));
	/* Config RSS group offset and sizes */
	for (grp = 0; grp < rss_grps; grp++)
		FUNC6(rvu, blkaddr, FUNC3(nixlf, grp),
			    ((FUNC4(rss_sz) - 1) << 16) | (rss_sz * grp));
	return 0;
}