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
typedef  scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct bgx {scalar_t__ lmac_count; size_t bgx_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bgx*,scalar_t__) ; 
 int /*<<< orphan*/ ** bgx_vnic ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct bgx* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct bgx *bgx = FUNC2(pdev);
	u8 lmac;

	/* Disable all LMACs */
	for (lmac = 0; lmac < bgx->lmac_count; lmac++)
		FUNC0(bgx, lmac);

	bgx_vnic[bgx->bgx_id] = NULL;
	FUNC3(pdev);
	FUNC1(pdev);
	FUNC4(pdev, NULL);
}