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
struct vdoa_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct vdoa_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct platform_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct vdoa_data* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static struct vdoa_data *FUNC5(void)
{
	struct device_node *vdoa_node;
	struct platform_device *vdoa_pdev;
	struct vdoa_data *vdoa_data = NULL;

	vdoa_node = FUNC1(NULL, NULL, "fsl,imx6q-vdoa");
	if (!vdoa_node)
		return NULL;

	vdoa_pdev = FUNC2(vdoa_node);
	if (!vdoa_pdev)
		goto out;

	vdoa_data = FUNC4(vdoa_pdev);
	if (!vdoa_data)
		vdoa_data = FUNC0(-EPROBE_DEFER);

out:
	FUNC3(vdoa_node);

	return vdoa_data;
}