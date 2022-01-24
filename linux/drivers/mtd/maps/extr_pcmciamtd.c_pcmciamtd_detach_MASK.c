#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcmciamtd_dev {TYPE_2__* mtd_info; TYPE_1__* p_dev; } ;
struct pcmcia_device {struct pcmciamtd_dev* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *link)
{
	struct pcmciamtd_dev *dev = link->priv;

	FUNC4("link=0x%p\n", link);

	if(dev->mtd_info) {
		FUNC2(dev->mtd_info);
		FUNC0(&dev->p_dev->dev, "mtd%d: Removing\n",
			 dev->mtd_info->index);
		FUNC1(dev->mtd_info);
	}

	FUNC3(link);
}