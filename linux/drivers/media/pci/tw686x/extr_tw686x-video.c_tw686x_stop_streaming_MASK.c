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
struct vb2_queue {int dummy; } ;
struct tw686x_video_channel {int /*<<< orphan*/  qlock; int /*<<< orphan*/  ch; struct tw686x_dev* dev; } ;
struct tw686x_dev {int /*<<< orphan*/  lock; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tw686x_video_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tw686x_dev*,int /*<<< orphan*/ ) ; 
 struct tw686x_video_channel* FUNC4 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC5(struct vb2_queue *vq)
{
	struct tw686x_video_channel *vc = FUNC4(vq);
	struct tw686x_dev *dev = vc->dev;
	struct pci_dev *pci_dev;
	unsigned long flags;

	/* Check device presence */
	FUNC0(&dev->lock, flags);
	pci_dev = dev->pci_dev;
	FUNC1(&dev->lock, flags);
	if (pci_dev)
		FUNC3(dev, vc->ch);

	FUNC0(&vc->qlock, flags);
	FUNC2(vc, VB2_BUF_STATE_ERROR);
	FUNC1(&vc->qlock, flags);
}