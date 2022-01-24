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
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct bnx2x_virtf {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev*) ; 
 struct bnx2x_virtf* FUNC1 (struct bnx2x*,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct bnx2x *bp, u8 abs_vfid)
{
	struct pci_dev *dev;
	struct bnx2x_virtf *vf = FUNC1(bp, abs_vfid);

	if (!vf)
		return false;

	dev = FUNC2(vf->domain, vf->bus, vf->devfn);
	if (dev)
		return FUNC0(dev);
	return false;
}