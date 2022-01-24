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
struct nic {TYPE_1__* csr; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selective_reset ; 
 int /*<<< orphan*/  software_reset ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct nic *nic)
{
	/* Put CU and RU into idle with a selective reset to get
	 * device off of PCI bus */
	FUNC2(selective_reset, &nic->csr->port);
	FUNC1(nic); FUNC3(20);

	/* Now fully reset device */
	FUNC2(software_reset, &nic->csr->port);
	FUNC1(nic); FUNC3(20);

	/* Mask off our interrupt line - it's unmasked after reset */
	FUNC0(nic);
}