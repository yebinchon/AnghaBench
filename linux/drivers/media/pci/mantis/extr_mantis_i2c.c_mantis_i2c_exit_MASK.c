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
struct mantis_pci {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_INT_I2CDONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mantis_pci*,int /*<<< orphan*/ ) ; 

int FUNC3(struct mantis_pci *mantis)
{
	FUNC0(MANTIS_DEBUG, 1, "Disabling I2C interrupt");
	FUNC2(mantis, MANTIS_INT_I2CDONE);

	FUNC0(MANTIS_DEBUG, 1, "Removing I2C adapter");
	FUNC1(&mantis->adapter);

	return 0;
}