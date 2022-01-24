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
struct pci_dev {int dummy; } ;
struct aq_nic_s {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMSG_RESTORE ; 
 int FUNC0 (struct aq_nic_s*,int /*<<< orphan*/ *) ; 
 struct aq_nic_s* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *pdev)
{
	struct aq_nic_s *self = FUNC1(pdev);
	pm_message_t pm_msg = PMSG_RESTORE;

	return FUNC0(self, &pm_msg);
}