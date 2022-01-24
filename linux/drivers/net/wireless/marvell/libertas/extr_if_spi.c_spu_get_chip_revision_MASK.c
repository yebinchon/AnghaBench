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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct if_spi_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IF_SPI_DEVICEID_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct if_spi_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct if_spi_card *card,
				  u16 *card_id, u8 *card_rev)
{
	int err = 0;
	u32 dev_ctrl;
	err = FUNC2(card, IF_SPI_DEVICEID_CTRL_REG, &dev_ctrl);
	if (err)
		return err;
	*card_id = FUNC0(dev_ctrl);
	*card_rev = FUNC1(dev_ctrl);
	return err;
}