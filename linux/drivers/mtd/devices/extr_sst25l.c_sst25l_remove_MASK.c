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
struct sst25l_flash {int /*<<< orphan*/  mtd; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct sst25l_flash* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi)
{
	struct sst25l_flash *flash = FUNC1(spi);

	return FUNC0(&flash->mtd);
}