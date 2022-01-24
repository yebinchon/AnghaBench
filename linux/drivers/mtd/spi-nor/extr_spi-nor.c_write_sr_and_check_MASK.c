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
typedef  int u8 ;
struct spi_nor {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct spi_nor*) ; 
 int FUNC1 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*) ; 
 int FUNC3 (struct spi_nor*,int) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor, u8 status_new, u8 mask)
{
	int ret;

	FUNC2(nor);
	ret = FUNC3(nor, status_new);
	if (ret)
		return ret;

	ret = FUNC1(nor);
	if (ret)
		return ret;

	ret = FUNC0(nor);
	if (ret < 0)
		return ret;

	return ((ret & mask) != (status_new & mask)) ? -EIO : 0;
}