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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct niu_parent {int plat_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  PLAT_TYPE_ATLAS 131 
#define  PLAT_TYPE_NIU 130 
#define  PLAT_TYPE_VF_P0 129 
#define  PLAT_TYPE_VF_P1 128 
 struct niu_parent* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct platform_device *plat_dev = FUNC2(dev);
	struct niu_parent *p = FUNC0(&plat_dev->dev);
	const char *type_str;

	switch (p->plat_type) {
	case PLAT_TYPE_ATLAS:
		type_str = "atlas";
		break;
	case PLAT_TYPE_NIU:
		type_str = "niu";
		break;
	case PLAT_TYPE_VF_P0:
		type_str = "vf_p0";
		break;
	case PLAT_TYPE_VF_P1:
		type_str = "vf_p1";
		break;
	default:
		type_str = "unknown";
		break;
	}

	return FUNC1(buf, "%s\n", type_str);
}