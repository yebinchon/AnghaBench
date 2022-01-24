#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int devfn; TYPE_2__* bus; } ;
struct TYPE_4__ {struct ena_admin_host_info* host_info; } ;
struct ena_com_dev {TYPE_1__ host_attr; } ;
struct ena_admin_host_info {int bdf; char driver_version; int /*<<< orphan*/  driver_supported_features; int /*<<< orphan*/  num_cpus; int /*<<< orphan*/  os_dist_str; scalar_t__ os_dist; int /*<<< orphan*/  kernel_ver_str; int /*<<< orphan*/  kernel_ver; int /*<<< orphan*/  os_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  release; int /*<<< orphan*/  version; } ;
struct TYPE_5__ {int number; } ;

/* Variables and functions */
 char DRV_MODULE_VER_MAJOR ; 
 char DRV_MODULE_VER_MINOR ; 
 char DRV_MODULE_VER_SUBMINOR ; 
 int /*<<< orphan*/  ENA_ADMIN_HOST_INFO_INTERRUPT_MODERATION_MASK ; 
 char ENA_ADMIN_HOST_INFO_MINOR_SHIFT ; 
 char ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT ; 
 char ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT ; 
 int /*<<< orphan*/  ENA_ADMIN_OS_LINUX ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LINUX_VERSION_CODE ; 
 int FUNC0 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_dev*) ; 
 int FUNC2 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct ena_com_dev *ena_dev,
				 struct pci_dev *pdev)
{
	struct ena_admin_host_info *host_info;
	int rc;

	/* Allocate only the host info */
	rc = FUNC0(ena_dev);
	if (rc) {
		FUNC4("Cannot allocate host info\n");
		return;
	}

	host_info = ena_dev->host_attr.host_info;

	host_info->bdf = (pdev->bus->number << 8) | pdev->devfn;
	host_info->os_type = ENA_ADMIN_OS_LINUX;
	host_info->kernel_ver = LINUX_VERSION_CODE;
	FUNC6(host_info->kernel_ver_str, FUNC8()->version,
		sizeof(host_info->kernel_ver_str) - 1);
	host_info->os_dist = 0;
	FUNC7(host_info->os_dist_str, FUNC8()->release,
		sizeof(host_info->os_dist_str) - 1);
	host_info->driver_version =
		(DRV_MODULE_VER_MAJOR) |
		(DRV_MODULE_VER_MINOR << ENA_ADMIN_HOST_INFO_MINOR_SHIFT) |
		(DRV_MODULE_VER_SUBMINOR << ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT) |
		("K"[0] << ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT);
	host_info->num_cpus = FUNC3();

	host_info->driver_supported_features =
		ENA_ADMIN_HOST_INFO_INTERRUPT_MODERATION_MASK;

	rc = FUNC2(ena_dev);
	if (rc) {
		if (rc == -EOPNOTSUPP)
			FUNC5("Cannot set host attributes\n");
		else
			FUNC4("Cannot set host attributes\n");

		goto err;
	}

	return;

err:
	FUNC1(ena_dev);
}