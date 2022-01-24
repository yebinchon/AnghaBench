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
struct mantis_pci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC2 (struct mantis_pci*) ; 
 scalar_t__ FUNC3 (struct mantis_pci*) ; 
 scalar_t__ FUNC4 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC5 (struct mantis_pci*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC6(struct mantis_pci *mantis)
{
	FUNC2(mantis);
	FUNC0(verbose, MANTIS_ERROR, 1, "DMA engine stopping");

	FUNC5(mantis);
	FUNC0(verbose, MANTIS_ERROR, 1, "UART exit failed");

	if (FUNC1(mantis) < 0)
		FUNC0(verbose, MANTIS_ERROR, 1, "DMA exit failed");
	if (FUNC3(mantis) < 0)
		FUNC0(verbose, MANTIS_ERROR, 1, "DVB exit failed");
	if (FUNC4(mantis) < 0)
		FUNC0(verbose, MANTIS_ERROR, 1, "I2C adapter delete.. failed");

	return 0;
}