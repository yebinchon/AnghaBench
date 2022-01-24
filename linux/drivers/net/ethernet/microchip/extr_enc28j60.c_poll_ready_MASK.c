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
typedef  int u8 ;
struct enc28j60_net {TYPE_1__* spi; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct enc28j60_net*) ; 
 int FUNC4 (struct enc28j60_net*,int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct enc28j60_net *priv, u8 reg, u8 mask, u8 val)
{
	struct device *dev = &priv->spi->dev;
	unsigned long timeout = jiffies + FUNC2(20);

	/* 20 msec timeout read */
	while ((FUNC4(priv, reg) & mask) != val) {
		if (FUNC5(jiffies, timeout)) {
			if (FUNC3(priv))
				FUNC1(dev, "reg %02x ready timeout!\n", reg);
			return -ETIMEDOUT;
		}
		FUNC0();
	}
	return 0;
}