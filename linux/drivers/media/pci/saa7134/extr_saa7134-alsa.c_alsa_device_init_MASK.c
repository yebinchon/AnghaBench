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
struct TYPE_2__ {struct saa7134_dev* priv_data; } ;
struct saa7134_dev {int /*<<< orphan*/  nr; TYPE_1__ dmasound; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct saa7134_dev *dev)
{
	dev->dmasound.priv_data = dev;
	FUNC0(dev,dev->nr);
	return 1;
}