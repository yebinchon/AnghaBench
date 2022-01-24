#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nr; } ;
struct TYPE_4__ {unsigned char addr; } ;
struct bttv {scalar_t__ i2c_rc; TYPE_1__ c; TYPE_2__ i2c_client; } ;

/* Variables and functions */
 scalar_t__ bttv_verbose ; 
 int FUNC0 (TYPE_2__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned char) ; 

int FUNC4(struct bttv *btv, unsigned char addr, char *probe_for)
{
	unsigned char buffer = 0;

	if (0 != btv->i2c_rc)
		return -1;
	if (bttv_verbose && NULL != probe_for)
		FUNC2("%d: i2c: checking for %s @ 0x%02x... ",
			btv->c.nr, probe_for, addr);
	btv->i2c_client.addr = addr >> 1;
	if (1 != FUNC0(&btv->i2c_client, &buffer, 1)) {
		if (NULL != probe_for) {
			if (bttv_verbose)
				FUNC1("not found\n");
		} else
			FUNC3("%d: i2c read 0x%x: error\n",
				btv->c.nr, addr);
		return -1;
	}
	if (bttv_verbose && NULL != probe_for)
		FUNC1("found\n");
	return buffer;
}