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
struct pcmcia_device {TYPE_1__** resource; } ;
struct TYPE_2__ {unsigned int start; scalar_t__ end; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_DATA_PATH_WIDTH_8 ; 
 int FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_device *link)
{
    int i, ret;
    static const unsigned int serial_base[5] =
	{ 0x3f8, 0x2f8, 0x3e8, 0x2e8, 0x0 };

    for (i = 0; i < 5; i++) {
	link->resource[1]->start = serial_base[i];
	link->resource[1]->flags |= IO_DATA_PATH_WIDTH_8;
	if (link->resource[1]->start == 0) {
	    link->resource[1]->end = 0;
	    FUNC1("out of resource for serial\n");
	}
	ret = FUNC0(link);
	if (ret == 0)
		return ret;
    }
    return ret;
}