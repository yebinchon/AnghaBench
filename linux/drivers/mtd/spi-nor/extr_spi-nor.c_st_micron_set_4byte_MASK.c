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
 int /*<<< orphan*/  FUNC1 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC3(struct spi_nor *nor, bool enable)
{
	int ret;

	FUNC2(nor);
	ret = FUNC0(nor, enable);
	FUNC1(nor);

	return ret;
}