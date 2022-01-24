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
struct spi_device {int dummy; } ;
struct if_spi_card {int /*<<< orphan*/  resume_work; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct if_spi_card* FUNC1 (struct spi_device*) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct spi_device *spi = FUNC2(dev);
	struct if_spi_card *card = FUNC1(spi);

	/* Schedule delayed work */
	FUNC0(&card->resume_work);

	return 0;
}