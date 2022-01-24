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
struct tsi108_prv_data {int /*<<< orphan*/  misclock; int /*<<< orphan*/  txlock; scalar_t__ link_up; scalar_t__ txfree; } ;
struct net_device {unsigned char* dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  TSI108_MAC_ADDR1 ; 
 int /*<<< orphan*/  TSI108_MAC_ADDR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct tsi108_prv_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, void *addr)
{
	struct tsi108_prv_data *data = FUNC2(dev);
	u32 word1, word2;
	int i;

	if (!FUNC1(addr))
		return -EADDRNOTAVAIL;

	for (i = 0; i < 6; i++)
		/* +2 is for the offset of the HW addr type */
		dev->dev_addr[i] = ((unsigned char *)addr)[i + 2];

	word2 = (dev->dev_addr[0] << 16) | (dev->dev_addr[1] << 24);

	word1 = (dev->dev_addr[2] << 0) | (dev->dev_addr[3] << 8) |
	    (dev->dev_addr[4] << 16) | (dev->dev_addr[5] << 24);

	FUNC5(&data->misclock);
	FUNC0(TSI108_MAC_ADDR1, word1);
	FUNC0(TSI108_MAC_ADDR2, word2);
	FUNC4(&data->txlock);

	if (data->txfree && data->link_up)
		FUNC3(dev);

	FUNC6(&data->txlock);
	FUNC7(&data->misclock);
	return 0;
}