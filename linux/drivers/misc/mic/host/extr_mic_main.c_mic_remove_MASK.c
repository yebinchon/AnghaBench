#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  va; } ;
struct TYPE_3__ {int /*<<< orphan*/  va; } ;
struct mic_device {int /*<<< orphan*/  id; TYPE_2__ mmio; TYPE_1__ aper; int /*<<< orphan*/  cosm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_mic_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mic_device*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct mic_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct mic_device *mdev;

	mdev = FUNC9(pdev);
	if (!mdev)
		return;

	FUNC0(mdev->cosm_dev);
	FUNC4(mdev);
	FUNC5(mdev);
	FUNC7(mdev);
	FUNC6(mdev, pdev);
	FUNC2(mdev->aper.va);
	FUNC2(mdev->mmio.va);
	FUNC10(pdev);
	FUNC8(pdev);
	FUNC1(&g_mic_ida, mdev->id);
	FUNC3(mdev);
}