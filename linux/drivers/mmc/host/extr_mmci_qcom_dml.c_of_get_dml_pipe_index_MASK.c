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
struct of_phandle_args {int* args; scalar_t__ args_count; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 int FUNC1 (struct device_node*,char*,char const*) ; 

__attribute__((used)) static int FUNC2(struct device_node *np, const char *name)
{
	int index;
	struct of_phandle_args	dma_spec;

	index = FUNC1(np, "dma-names", name);

	if (index < 0)
		return -ENODEV;

	if (FUNC0(np, "dmas", "#dma-cells", index,
				       &dma_spec))
		return -ENODEV;

	if (dma_spec.args_count)
		return dma_spec.args[0];

	return -ENODEV;
}