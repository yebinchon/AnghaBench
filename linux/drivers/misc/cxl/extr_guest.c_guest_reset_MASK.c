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
struct cxl_afu {int dummy; } ;
struct cxl {int slices; int /*<<< orphan*/  afu_list_lock; struct cxl_afu** afu; TYPE_1__* guest; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_ERROR_DETECTED_EVENT ; 
 int /*<<< orphan*/  CXL_RESUME_EVENT ; 
 int /*<<< orphan*/  CXL_SLOT_RESET_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_channel_io_frozen ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cxl *adapter)
{
	struct cxl_afu *afu = NULL;
	int i, rc;

	FUNC3("Adapter reset request\n");
	FUNC4(&adapter->afu_list_lock);
	for (i = 0; i < adapter->slices; i++) {
		if ((afu = adapter->afu[i])) {
			FUNC2(afu, CXL_ERROR_DETECTED_EVENT,
					pci_channel_io_frozen);
			FUNC0(afu);
		}
	}

	rc = FUNC1(adapter->guest->handle);
	for (i = 0; i < adapter->slices; i++) {
		if (!rc && (afu = adapter->afu[i])) {
			FUNC2(afu, CXL_SLOT_RESET_EVENT,
					pci_channel_io_normal);
			FUNC2(afu, CXL_RESUME_EVENT, 0);
		}
	}
	FUNC5(&adapter->afu_list_lock);
	return rc;
}