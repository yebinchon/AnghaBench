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
struct spinand_device {int /*<<< orphan*/  spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 struct spi_mem_op FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 

__attribute__((used)) static int FUNC2(struct spinand_device *spinand)
{
	struct spi_mem_op op = FUNC0(true);

	return FUNC1(spinand->spimem, &op);
}