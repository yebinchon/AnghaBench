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
typedef  int u32 ;
typedef  int u16 ;
struct inode {struct ath5k_hw* i_private; } ;
struct file {void* private_data; } ;
struct eeprom_private {int* buf; int len; } ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int AR5K_EEPROM_INFO_BASE ; 
 int AR5K_EEPROM_INFO_MAX ; 
 int AR5K_EEPROM_SIZE_ENDLOC_SHIFT ; 
 int AR5K_EEPROM_SIZE_LOWER ; 
 int AR5K_EEPROM_SIZE_UPPER ; 
 int AR5K_EEPROM_SIZE_UPPER_MASK ; 
 int EACCES ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct ath5k_hw*,int,int*) ; 
 struct eeprom_private* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct eeprom_private *ep;
	struct ath5k_hw *ah = inode->i_private;
	bool res;
	int i, ret;
	u32 eesize;	/* NB: in 16-bit words */
	u16 val, *buf;

	/* Get eeprom size */

	res = FUNC1(ah, AR5K_EEPROM_SIZE_UPPER, &val);
	if (!res)
		return -EACCES;

	if (val == 0) {
		eesize = AR5K_EEPROM_INFO_MAX + AR5K_EEPROM_INFO_BASE;
	} else {
		eesize = (val & AR5K_EEPROM_SIZE_UPPER_MASK) <<
			AR5K_EEPROM_SIZE_ENDLOC_SHIFT;
		FUNC1(ah, AR5K_EEPROM_SIZE_LOWER, &val);
		eesize = eesize | val;
	}

	if (eesize > 4096)
		return -EINVAL;

	/* Create buffer and read in eeprom */

	buf = FUNC4(FUNC0(eesize, 2));
	if (!buf) {
		ret = -ENOMEM;
		goto err;
	}

	for (i = 0; i < eesize; ++i) {
		if (!FUNC1(ah, i, &val)) {
			ret = -EIO;
			goto freebuf;
		}
		buf[i] = val;
	}

	/* Create private struct and assign to file */

	ep = FUNC2(sizeof(*ep), GFP_KERNEL);
	if (!ep) {
		ret = -ENOMEM;
		goto freebuf;
	}

	ep->buf = buf;
	ep->len = eesize * 2;

	file->private_data = (void *)ep;

	return 0;

freebuf:
	FUNC3(buf);
err:
	return ret;

}