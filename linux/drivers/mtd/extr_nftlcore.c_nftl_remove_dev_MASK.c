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
struct mtd_blktrans_dev {int /*<<< orphan*/  devnum; } ;
struct NFTLrecord {int /*<<< orphan*/  EUNtable; int /*<<< orphan*/  ReplUnitTable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mtd_blktrans_dev *dev)
{
	struct NFTLrecord *nftl = (void *)dev;

	FUNC2("NFTL: remove_dev (i=%d)\n", dev->devnum);

	FUNC0(dev);
	FUNC1(nftl->ReplUnitTable);
	FUNC1(nftl->EUNtable);
}