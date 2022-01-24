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
struct pcie_service_card {int /*<<< orphan*/  work; int /*<<< orphan*/  work_flags; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWIFIEX_IFACE_WORK_DEVICE_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;

	if (!FUNC1(MWIFIEX_IFACE_WORK_DEVICE_DUMP,
			      &card->work_flags))
		FUNC0(&card->work);
}