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
struct pcmciamtd_dev {int /*<<< orphan*/ * win_base; } ;
struct pcmcia_device {TYPE_1__** resource; struct pcmciamtd_dev* priv; } ;
struct TYPE_2__ {scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	struct pcmciamtd_dev *dev = link->priv;

	FUNC2("link = 0x%p\n", link);

	if (link->resource[2]->end) {
		if(dev->win_base) {
			FUNC0(dev->win_base);
			dev->win_base = NULL;
		}
	}
	FUNC1(link);
}