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
struct pci_dev {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_dir ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 

struct dentry *FUNC2(struct pci_dev *pdev)
{
	return FUNC0(FUNC1(pdev), nfp_dir);
}