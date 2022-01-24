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
struct mtdswap_dev {int dummy; } ;
struct mtd_blktrans_dev {int dummy; } ;

/* Variables and functions */
 struct mtdswap_dev* FUNC0 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtdswap_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtdswap_dev*) ; 

__attribute__((used)) static void FUNC4(struct mtd_blktrans_dev *dev)
{
	struct mtdswap_dev *d = FUNC0(dev);

	FUNC1(dev);
	FUNC3(d);
	FUNC2(d);
}