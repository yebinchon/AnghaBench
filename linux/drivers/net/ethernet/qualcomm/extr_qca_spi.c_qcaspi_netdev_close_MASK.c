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
struct qcaspi {int /*<<< orphan*/ * spi_thread; TYPE_1__* spi_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_REG_INTR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qcaspi* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC5 (struct qcaspi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wr_verify ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev)
{
	struct qcaspi *qca = FUNC2(dev);

	FUNC3(dev);

	FUNC5(qca, SPI_REG_INTR_ENABLE, 0, wr_verify);
	FUNC0(qca->spi_dev->irq, qca);

	FUNC1(qca->spi_thread);
	qca->spi_thread = NULL;
	FUNC4(qca);

	return 0;
}