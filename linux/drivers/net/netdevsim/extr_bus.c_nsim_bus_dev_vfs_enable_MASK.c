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
struct nsim_vf_config {int dummy; } ;
struct nsim_bus_dev {unsigned int num_vfs; int /*<<< orphan*/  vfconfigs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct nsim_bus_dev *nsim_bus_dev,
				   unsigned int num_vfs)
{
	nsim_bus_dev->vfconfigs = FUNC0(num_vfs,
					  sizeof(struct nsim_vf_config),
					  GFP_KERNEL);
	if (!nsim_bus_dev->vfconfigs)
		return -ENOMEM;
	nsim_bus_dev->num_vfs = num_vfs;

	return 0;
}