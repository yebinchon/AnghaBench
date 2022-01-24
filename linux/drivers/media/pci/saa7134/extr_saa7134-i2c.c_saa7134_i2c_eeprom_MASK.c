#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int addr; } ;
struct saa7134_dev {scalar_t__ board; int /*<<< orphan*/  name; TYPE_1__ i2c_client; } ;

/* Variables and functions */
 scalar_t__ SAA7134_BOARD_MD7134 ; 
 int FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int FUNC1 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*) ; 

__attribute__((used)) static int
FUNC5(struct saa7134_dev *dev, unsigned char *eedata, int len)
{
	unsigned char buf;
	int i,err;

	if (dev->board == SAA7134_BOARD_MD7134)
		FUNC4(dev);

	dev->i2c_client.addr = 0xa0 >> 1;
	buf = 0;
	if (1 != (err = FUNC1(&dev->i2c_client,&buf,1))) {
		FUNC2("%s: Huh, no eeprom present (err=%d)?\n",
		       dev->name,err);
		return -1;
	}
	if (len != (err = FUNC0(&dev->i2c_client,eedata,len))) {
		FUNC3("%s: i2c eeprom read error (err=%d)\n",
		       dev->name,err);
		return -1;
	}

	for (i = 0; i < len; i += 16) {
		int size = (len - i) > 16 ? 16 : len - i;

		FUNC2("i2c eeprom %02x: %*ph\n", i, size, &eedata[i]);
	}

	return 0;
}