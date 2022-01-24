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
struct TYPE_2__ {scalar_t__ bufsize; scalar_t__ blksize; scalar_t__ blocks; } ;
struct saa7134_dev {TYPE_1__ dmasound; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct saa7134_dev *dev)
{
	FUNC0(!dev->dmasound.blksize);

	FUNC1(&dev->dmasound);

	dev->dmasound.blocks  = 0;
	dev->dmasound.blksize = 0;
	dev->dmasound.bufsize = 0;

	return 0;
}