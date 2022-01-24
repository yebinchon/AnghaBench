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
struct uld_msix_bmap {int /*<<< orphan*/  lock; int /*<<< orphan*/  msix_bmap; } ;
struct adapter {struct uld_msix_bmap msix_bmap_ulds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct adapter *adap, unsigned int msix_idx)
{
	struct uld_msix_bmap *bmap = &adap->msix_bmap_ulds;
	unsigned long flags;

	FUNC1(&bmap->lock, flags);
	FUNC0(msix_idx, bmap->msix_bmap);
	FUNC2(&bmap->lock, flags);
}