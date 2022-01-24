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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct can_bittiming {int sjw; int brp; int phase_seg1; int prop_seg; int phase_seg2; } ;
struct TYPE_2__ {int ctrlmode; struct can_bittiming bittiming; } ;
struct hi3110_priv {TYPE_1__ can; struct spi_device* spi; } ;

/* Variables and functions */
 int CAN_CTRLMODE_3_SAMPLES ; 
 int HI3110_BTR0_BRP_SHIFT ; 
 int HI3110_BTR0_SJW_SHIFT ; 
 int HI3110_BTR1_SAMP_1PERBIT ; 
 int HI3110_BTR1_SAMP_3PERBIT ; 
 int HI3110_BTR1_TSEG1_SHIFT ; 
 int HI3110_BTR1_TSEG2_SHIFT ; 
 int /*<<< orphan*/  HI3110_READ_BTR0 ; 
 int /*<<< orphan*/  HI3110_READ_BTR1 ; 
 int /*<<< orphan*/  HI3110_WRITE_BTR0 ; 
 int /*<<< orphan*/  HI3110_WRITE_BTR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int) ; 
 struct hi3110_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net)
{
	struct hi3110_priv *priv = FUNC3(net);
	struct can_bittiming *bt = &priv->can.bittiming;
	struct spi_device *spi = priv->spi;

	FUNC2(spi, HI3110_WRITE_BTR0,
		     ((bt->sjw - 1) << HI3110_BTR0_SJW_SHIFT) |
		     ((bt->brp - 1) << HI3110_BTR0_BRP_SHIFT));

	FUNC2(spi, HI3110_WRITE_BTR1,
		     (priv->can.ctrlmode &
		      CAN_CTRLMODE_3_SAMPLES ?
		      HI3110_BTR1_SAMP_3PERBIT : HI3110_BTR1_SAMP_1PERBIT) |
		     ((bt->phase_seg1 + bt->prop_seg - 1)
		      << HI3110_BTR1_TSEG1_SHIFT) |
		     ((bt->phase_seg2 - 1) << HI3110_BTR1_TSEG2_SHIFT));

	FUNC0(&spi->dev, "BT: 0x%02x 0x%02x\n",
		FUNC1(spi, HI3110_READ_BTR0),
		FUNC1(spi, HI3110_READ_BTR1));

	return 0;
}