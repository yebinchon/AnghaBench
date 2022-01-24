#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvaser_usb {int nchannels; TYPE_1__** nets; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvaser_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvaser_usb *dev)
{
	int i;

	for (i = 0; i < dev->nchannels; i++) {
		if (!dev->nets[i])
			continue;

		FUNC2(dev->nets[i]->netdev);
	}

	FUNC1(dev);

	for (i = 0; i < dev->nchannels; i++) {
		if (!dev->nets[i])
			continue;

		FUNC0(dev->nets[i]->netdev);
	}
}