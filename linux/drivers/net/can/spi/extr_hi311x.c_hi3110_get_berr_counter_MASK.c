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
struct spi_device {int dummy; } ;
struct net_device {int dummy; } ;
struct hi3110_priv {int /*<<< orphan*/  hi3110_lock; struct spi_device* spi; } ;
struct can_berr_counter {void* rxerr; void* txerr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HI3110_READ_REC ; 
 int /*<<< orphan*/  HI3110_READ_TEC ; 
 void* FUNC0 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hi3110_priv* FUNC3 (struct net_device const*) ; 

__attribute__((used)) static int FUNC4(const struct net_device *net,
				   struct can_berr_counter *bec)
{
	struct hi3110_priv *priv = FUNC3(net);
	struct spi_device *spi = priv->spi;

	FUNC1(&priv->hi3110_lock);
	bec->txerr = FUNC0(spi, HI3110_READ_TEC);
	bec->rxerr = FUNC0(spi, HI3110_READ_REC);
	FUNC2(&priv->hi3110_lock);

	return 0;
}