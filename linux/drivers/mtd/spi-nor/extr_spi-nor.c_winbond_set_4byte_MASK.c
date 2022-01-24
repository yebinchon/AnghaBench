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
struct spi_nor {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct spi_nor*,int) ; 
 int FUNC1 (struct spi_nor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor, bool enable)
{
	int ret;

	ret = FUNC0(nor, enable);
	if (ret || enable)
		return ret;

	/*
	 * On Winbond W25Q256FV, leaving 4byte mode causes the Extended Address
	 * Register to be set to 1, so all 3-byte-address reads come from the
	 * second 16M. We must clear the register to enable normal behavior.
	 */
	FUNC3(nor);
	ret = FUNC1(nor, 0);
	FUNC2(nor);

	return ret;
}