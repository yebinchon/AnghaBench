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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  enum qede_pci_private { ____Placeholder_qede_pci_private } qede_pci_private ;

/* Variables and functions */
#define  QEDE_PRIVATE_VF 128 
 int /*<<< orphan*/  QEDE_PROBE_NORMAL ; 
 int QED_LOG_VERBOSE_MASK ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, const struct pci_device_id *id)
{
	bool is_vf = false;
	u32 dp_module = 0;
	u8 dp_level = 0;

	switch ((enum qede_pci_private)id->driver_data) {
	case QEDE_PRIVATE_VF:
		if (debug & QED_LOG_VERBOSE_MASK)
			FUNC1(&pdev->dev, "Probing a VF\n");
		is_vf = true;
		break;
	default:
		if (debug & QED_LOG_VERBOSE_MASK)
			FUNC1(&pdev->dev, "Probing a PF\n");
	}

	FUNC2(debug, &dp_module, &dp_level);

	return FUNC0(pdev, dp_module, dp_level, is_vf,
			    QEDE_PROBE_NORMAL);
}