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
typedef  int u8 ;
struct tlan_priv {int /*<<< orphan*/  lock; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLAN_EEPROM_ACK ; 
 int /*<<< orphan*/  TLAN_EEPROM_STOP ; 
 struct tlan_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, u8 ee_addr, u8 *data)
{
	int err;
	struct tlan_priv *priv = FUNC0(dev);
	unsigned long flags = 0;
	int ret = 0;

	FUNC1(&priv->lock, flags);

	FUNC5(dev->base_addr);
	err = FUNC4(dev->base_addr, 0xa0, TLAN_EEPROM_ACK);
	if (err) {
		ret = 1;
		goto fail;
	}
	err = FUNC4(dev->base_addr, ee_addr, TLAN_EEPROM_ACK);
	if (err) {
		ret = 2;
		goto fail;
	}
	FUNC5(dev->base_addr);
	err = FUNC4(dev->base_addr, 0xa1, TLAN_EEPROM_ACK);
	if (err) {
		ret = 3;
		goto fail;
	}
	FUNC3(dev->base_addr, data, TLAN_EEPROM_STOP);
fail:
	FUNC2(&priv->lock, flags);

	return ret;

}