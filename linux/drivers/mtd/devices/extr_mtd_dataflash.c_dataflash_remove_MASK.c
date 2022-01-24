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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct dataflash {int /*<<< orphan*/  mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dataflash*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct dataflash* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct dataflash	*flash = FUNC3(spi);
	int			status;

	FUNC0(&spi->dev, "remove\n");

	status = FUNC2(&flash->mtd);
	if (status == 0)
		FUNC1(flash);
	return status;
}