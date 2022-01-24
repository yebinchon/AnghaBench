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
struct uld_msix_bmap {unsigned int mapsize; int /*<<< orphan*/  lock; int /*<<< orphan*/  msix_bmap; } ;
struct adapter {struct uld_msix_bmap msix_bmap_ulds; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct adapter *adap)
{
	struct uld_msix_bmap *bmap = &adap->msix_bmap_ulds;
	unsigned long flags;
	unsigned int msix_idx;

	FUNC2(&bmap->lock, flags);
	msix_idx = FUNC1(bmap->msix_bmap, bmap->mapsize);
	if (msix_idx < bmap->mapsize) {
		FUNC0(msix_idx, bmap->msix_bmap);
	} else {
		FUNC3(&bmap->lock, flags);
		return -ENOSPC;
	}

	FUNC3(&bmap->lock, flags);
	return msix_idx;
}