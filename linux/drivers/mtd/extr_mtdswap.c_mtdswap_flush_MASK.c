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
struct mtdswap_dev {int /*<<< orphan*/  mtd; } ;
struct mtd_blktrans_dev {int dummy; } ;

/* Variables and functions */
 struct mtdswap_dev* FUNC0 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mtd_blktrans_dev *dev)
{
	struct mtdswap_dev *d = FUNC0(dev);

	FUNC1(d->mtd);
	return 0;
}