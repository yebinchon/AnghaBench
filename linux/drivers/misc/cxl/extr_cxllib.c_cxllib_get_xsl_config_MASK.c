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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct cxllib_xsl_config {scalar_t__ dra; int /*<<< orphan*/  bar_addr; int /*<<< orphan*/  log_bar_size; int /*<<< orphan*/  version; int /*<<< orphan*/  dsnctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int /*<<< orphan*/  CXL_CAPI_WINDOW_LOG_SIZE ; 
 int /*<<< orphan*/  CXL_CAPI_WINDOW_START ; 
 scalar_t__ CXL_INVALID_DRA ; 
 int /*<<< orphan*/  CXL_XSL_CONFIG_CURRENT_VERSION ; 
 int EINVAL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dra_mutex ; 
 scalar_t__ dummy_read_addr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct pci_dev *dev, struct cxllib_xsl_config *cfg)
{
	int rc;
	u32 phb_index;
	u64 chip_id, capp_unit_id;

	if (!FUNC1(CPU_FTR_HVMODE))
		return -EINVAL;

	FUNC4(&dra_mutex);
	if (dummy_read_addr == CXL_INVALID_DRA) {
		rc = FUNC0();
		if (rc) {
			FUNC5(&dra_mutex);
			return rc;
		}
	}
	FUNC5(&dra_mutex);

	rc = FUNC2(dev, &chip_id, &phb_index, &capp_unit_id);
	if (rc)
		return rc;

	rc = FUNC3(dev, capp_unit_id, &cfg->dsnctl);
	if (rc)
		return rc;

	cfg->version  = CXL_XSL_CONFIG_CURRENT_VERSION;
	cfg->log_bar_size = CXL_CAPI_WINDOW_LOG_SIZE;
	cfg->bar_addr = CXL_CAPI_WINDOW_START;
	cfg->dra = dummy_read_addr;
	return 0;
}