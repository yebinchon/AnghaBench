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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int /*<<< orphan*/  len; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_READ_EEPROM ; 
 int /*<<< orphan*/  AX_EEPROM_MAGIC ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *net, struct ethtool_eeprom *eeprom,
		    u8 *data)
{
	struct usbnet *dev = FUNC4(net);
	u16 *eeprom_buff;
	int first_word, last_word;
	int i;

	if (eeprom->len == 0)
		return -EINVAL;

	eeprom->magic = AX_EEPROM_MAGIC;

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;

	eeprom_buff = FUNC2(last_word - first_word + 1, sizeof(u16),
				    GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	/* ax8817x returns 2 bytes from eeprom on read */
	for (i = first_word; i <= last_word; i++) {
		if (FUNC0(dev, AX_CMD_READ_EEPROM, i, 0, 2,
				  &eeprom_buff[i - first_word], 0) < 0) {
			FUNC1(eeprom_buff);
			return -EIO;
		}
	}

	FUNC3(data, (u8 *)eeprom_buff + (eeprom->offset & 1), eeprom->len);
	FUNC1(eeprom_buff);
	return 0;
}