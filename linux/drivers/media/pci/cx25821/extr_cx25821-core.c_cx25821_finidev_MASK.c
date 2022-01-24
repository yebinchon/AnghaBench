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
struct pci_dev {scalar_t__ irq; } ;
struct cx25821_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct cx25821_dev*) ; 
 struct cx25821_dev* FUNC3 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct v4l2_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pci_dev)
{
	struct v4l2_device *v4l2_dev = FUNC6(pci_dev);
	struct cx25821_dev *dev = FUNC3(v4l2_dev);

	FUNC1(dev);
	FUNC5(pci_dev);

	/* unregister stuff */
	if (pci_dev->irq)
		FUNC2(pci_dev->irq, dev);

	FUNC0(dev);
	FUNC7(v4l2_dev);
	FUNC4(dev);
}