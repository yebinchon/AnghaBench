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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int prefault_mode; } ;
typedef  size_t ssize_t ;
typedef  enum prefault_modes { ____Placeholder_prefault_modes } prefault_modes ;

/* Variables and functions */
 int CXL_PREFAULT_ALL ; 
 int CXL_PREFAULT_NONE ; 
 int CXL_PREFAULT_WED ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 struct cxl_afu* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *device,
			  struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct cxl_afu *afu = FUNC3(device);
	enum prefault_modes mode = -1;

	if (!FUNC2(buf, "none", 4))
		mode = CXL_PREFAULT_NONE;
	else {
		if (!FUNC1()) {

			/* only allowed when not in radix mode */
			if (!FUNC2(buf, "work_element_descriptor", 23))
				mode = CXL_PREFAULT_WED;
			if (!FUNC2(buf, "all", 3))
				mode = CXL_PREFAULT_ALL;
		} else {
			FUNC0(device, "Cannot prefault with radix enabled\n");
		}
	}

	if (mode == -1)
		return -EINVAL;

	afu->prefault_mode = mode;
	return count;
}