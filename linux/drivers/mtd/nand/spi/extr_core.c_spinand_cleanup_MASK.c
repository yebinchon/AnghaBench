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
struct spinand_device {int /*<<< orphan*/  scratchbuf; int /*<<< orphan*/  databuf; } ;
struct nand_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spinand_device*) ; 
 struct nand_device* FUNC3 (struct spinand_device*) ; 

__attribute__((used)) static void FUNC4(struct spinand_device *spinand)
{
	struct nand_device *nand = FUNC3(spinand);

	FUNC1(nand);
	FUNC2(spinand);
	FUNC0(spinand->databuf);
	FUNC0(spinand->scratchbuf);
}