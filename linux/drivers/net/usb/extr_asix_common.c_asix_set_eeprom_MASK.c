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
struct ethtool_eeprom {int offset; scalar_t__ magic; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_READ_EEPROM ; 
 int /*<<< orphan*/  AX_CMD_WRITE_DISABLE ; 
 int /*<<< orphan*/  AX_CMD_WRITE_EEPROM ; 
 int /*<<< orphan*/  AX_CMD_WRITE_ENABLE ; 
 scalar_t__ AX_EEPROM_MAGIC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 struct usbnet* FUNC8 (struct net_device*) ; 

int FUNC9(struct net_device *net, struct ethtool_eeprom *eeprom,
		    u8 *data)
{
	struct usbnet *dev = FUNC8(net);
	u16 *eeprom_buff;
	int first_word, last_word;
	int i;
	int ret;

	FUNC6(net, "write EEPROM len %d, offset %d, magic 0x%x\n",
		   eeprom->len, eeprom->offset, eeprom->magic);

	if (eeprom->len == 0)
		return -EINVAL;

	if (eeprom->magic != AX_EEPROM_MAGIC)
		return -EINVAL;

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;

	eeprom_buff = FUNC3(last_word - first_word + 1, sizeof(u16),
				    GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	/* align data to 16 bit boundaries, read the missing data from
	   the EEPROM */
	if (eeprom->offset & 1) {
		ret = FUNC0(dev, AX_CMD_READ_EEPROM, first_word, 0, 2,
				    &eeprom_buff[0], 0);
		if (ret < 0) {
			FUNC7(net, "Failed to read EEPROM at offset 0x%02x.\n", first_word);
			goto free;
		}
	}

	if ((eeprom->offset + eeprom->len) & 1) {
		ret = FUNC0(dev, AX_CMD_READ_EEPROM, last_word, 0, 2,
				    &eeprom_buff[last_word - first_word], 0);
		if (ret < 0) {
			FUNC7(net, "Failed to read EEPROM at offset 0x%02x.\n", last_word);
			goto free;
		}
	}

	FUNC4((u8 *)eeprom_buff + (eeprom->offset & 1), data, eeprom->len);

	/* write data to EEPROM */
	ret = FUNC1(dev, AX_CMD_WRITE_ENABLE, 0x0000, 0, 0, NULL, 0);
	if (ret < 0) {
		FUNC7(net, "Failed to enable EEPROM write\n");
		goto free;
	}
	FUNC5(20);

	for (i = first_word; i <= last_word; i++) {
		FUNC6(net, "write to EEPROM at offset 0x%02x, data 0x%04x\n",
			   i, eeprom_buff[i - first_word]);
		ret = FUNC1(dev, AX_CMD_WRITE_EEPROM, i,
				     eeprom_buff[i - first_word], 0, NULL, 0);
		if (ret < 0) {
			FUNC7(net, "Failed to write EEPROM at offset 0x%02x.\n",
				   i);
			goto free;
		}
		FUNC5(20);
	}

	ret = FUNC1(dev, AX_CMD_WRITE_DISABLE, 0x0000, 0, 0, NULL, 0);
	if (ret < 0) {
		FUNC7(net, "Failed to disable EEPROM write\n");
		goto free;
	}

	ret = 0;
free:
	FUNC2(eeprom_buff);
	return ret;
}