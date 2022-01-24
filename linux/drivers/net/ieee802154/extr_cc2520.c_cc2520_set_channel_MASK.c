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
typedef  scalar_t__ u8 ;
struct ieee802154_hw {struct cc2520_private* priv; } ;
struct cc2520_private {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC2520_FREQCTRL ; 
 scalar_t__ CC2520_MAXCHANNEL ; 
 scalar_t__ CC2520_MINCHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cc2520_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC3(struct ieee802154_hw *hw, u8 page, u8 channel)
{
	struct cc2520_private *priv = hw->priv;
	int ret;

	FUNC2(&priv->spi->dev, "trying to set channel\n");

	FUNC0(page != 0);
	FUNC0(channel < CC2520_MINCHANNEL);
	FUNC0(channel > CC2520_MAXCHANNEL);

	ret = FUNC1(priv, CC2520_FREQCTRL,
				    11 + 5 * (channel - 11));

	return ret;
}