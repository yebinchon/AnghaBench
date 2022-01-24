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
struct mantis_pci {struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct mantis_pci *mantis)
{
	struct mantis_hwconfig *config = mantis->hwconfig;

	FUNC0(MANTIS_DEBUG, 1, "Frontend RESET");
	FUNC1(mantis, config->reset, 0);
	FUNC2(100);
	FUNC1(mantis, config->reset, 0);
	FUNC2(100);
	FUNC1(mantis, config->reset, 1);
	FUNC2(100);
	FUNC1(mantis, config->reset, 1);
	FUNC2(100);

	return;
}