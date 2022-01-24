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
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FIMC_INPUT_MIPI_CSI2_0 ; 
 struct device_node* FUNC0 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	u32 reg = 0;

	np = FUNC0(np, "port");
	if (!np)
		return -EINVAL;
	FUNC2(np, "reg", &reg);
	FUNC1(np);
	return reg - FIMC_INPUT_MIPI_CSI2_0;
}