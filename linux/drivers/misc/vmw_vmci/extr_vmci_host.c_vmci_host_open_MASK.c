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
struct vmci_host_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  ct_type; } ;
struct inode {int dummy; } ;
struct file {struct vmci_host_dev* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VMCIOBJ_NOT_SET ; 
 struct vmci_host_dev* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	struct vmci_host_dev *vmci_host_dev;

	vmci_host_dev = FUNC0(sizeof(struct vmci_host_dev), GFP_KERNEL);
	if (vmci_host_dev == NULL)
		return -ENOMEM;

	vmci_host_dev->ct_type = VMCIOBJ_NOT_SET;
	FUNC1(&vmci_host_dev->lock);
	filp->private_data = vmci_host_dev;

	return 0;
}