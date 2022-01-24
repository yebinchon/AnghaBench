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
struct v4l2_device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct maxiradio {int /*<<< orphan*/  io; int /*<<< orphan*/  tea; } ;

/* Variables and functions */
 struct v4l2_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct maxiradio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct maxiradio* FUNC7 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct v4l2_device *v4l2_dev = FUNC0(&pdev->dev);
	struct maxiradio *dev = FUNC7(v4l2_dev);

	FUNC6(&dev->tea);
	/* Turn off power */
	FUNC2(0, dev->io);
	FUNC8(v4l2_dev);
	FUNC5(FUNC4(pdev, 0), FUNC3(pdev, 0));
	FUNC1(dev);
}