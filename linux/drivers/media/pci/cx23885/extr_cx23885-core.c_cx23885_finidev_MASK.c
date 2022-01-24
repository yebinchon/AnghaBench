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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct cx23885_dev {int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct v4l2_device* FUNC7 (struct pci_dev*) ; 
 struct cx23885_dev* FUNC8 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_device*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pci_dev)
{
	struct v4l2_device *v4l2_dev = FUNC7(pci_dev);
	struct cx23885_dev *dev = FUNC8(v4l2_dev);

	FUNC1(dev);
	FUNC2(dev);

	FUNC3(dev);

	/* unregister stuff */
	FUNC4(pci_dev->irq, dev);

	FUNC6(pci_dev);

	FUNC0(dev);
	FUNC9(&dev->ctrl_handler);
	FUNC10(v4l2_dev);
	FUNC5(dev);
}