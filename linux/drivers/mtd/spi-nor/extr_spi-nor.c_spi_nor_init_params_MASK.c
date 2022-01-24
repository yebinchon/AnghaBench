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
struct spi_nor {TYPE_1__* info; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int SPI_NOR_DUAL_READ ; 
 int SPI_NOR_QUAD_READ ; 
 int SPI_NOR_SKIP_SFDP ; 
 int /*<<< orphan*/  FUNC0 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_nor*) ; 

__attribute__((used)) static void FUNC5(struct spi_nor *nor)
{
	FUNC0(nor);

	FUNC2(nor);

	if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
		FUNC4(nor);

	FUNC3(nor);

	FUNC1(nor);
}