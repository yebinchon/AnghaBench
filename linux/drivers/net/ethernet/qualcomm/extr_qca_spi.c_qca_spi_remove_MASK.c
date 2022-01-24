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
struct qcaspi {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct qcaspi* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcaspi*) ; 
 struct net_device* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct spi_device *spi)
{
	struct net_device *qcaspi_devs = FUNC3(spi);
	struct qcaspi *qca = FUNC1(qcaspi_devs);

	FUNC2(qca);

	FUNC4(qcaspi_devs);
	FUNC0(qcaspi_devs);

	return 0;
}