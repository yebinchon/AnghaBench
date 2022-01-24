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
struct spi_mem {int dummy; } ;

/* Variables and functions */
 struct spi_nor* FUNC0 (struct spi_mem*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_nor*) ; 

__attribute__((used)) static void FUNC2(struct spi_mem *spimem)
{
	struct spi_nor *nor = FUNC0(spimem);

	FUNC1(nor);
}