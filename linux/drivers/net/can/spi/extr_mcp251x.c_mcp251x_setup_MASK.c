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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RXBCTRL_BUKT ; 
 int RXBCTRL_RXM0 ; 
 int RXBCTRL_RXM1 ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *net, struct spi_device *spi)
{
	FUNC1(net);

	FUNC2(spi, FUNC0(0),
			  RXBCTRL_BUKT | RXBCTRL_RXM0 | RXBCTRL_RXM1);
	FUNC2(spi, FUNC0(1),
			  RXBCTRL_RXM0 | RXBCTRL_RXM1);
	return 0;
}