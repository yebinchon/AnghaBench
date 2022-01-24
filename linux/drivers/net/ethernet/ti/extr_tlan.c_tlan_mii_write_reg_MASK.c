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
typedef  int u16 ;
struct tlan_priv {int /*<<< orphan*/  lock; } ;
struct net_device {int base_addr; } ;

/* Variables and functions */
 int TLAN_DIO_ADR ; 
 int TLAN_DIO_DATA ; 
 int TLAN_NET_SIO ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MCLK ; 
 int /*<<< orphan*/  TLAN_NET_SIO_MINTEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct tlan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct net_device *dev, u16 phy, u16 reg, u16 val)
{
	u16	sio;
	int	minten;
	unsigned long flags = 0;
	struct tlan_priv *priv = FUNC1(dev);

	FUNC2(TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR);
	sio = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;

	if (!FUNC0())
		FUNC3(&priv->lock, flags);

	FUNC8(dev->base_addr);

	minten = FUNC6(TLAN_NET_SIO_MINTEN, sio);
	if (minten)
		FUNC5(TLAN_NET_SIO_MINTEN, sio);

	FUNC7(dev->base_addr, 0x1, 2);	/* start (01b) */
	FUNC7(dev->base_addr, 0x1, 2);	/* write (01b) */
	FUNC7(dev->base_addr, phy, 5);	/* device #      */
	FUNC7(dev->base_addr, reg, 5);	/* register #    */

	FUNC7(dev->base_addr, 0x2, 2);	/* send ACK */
	FUNC7(dev->base_addr, val, 16);	/* send data */

	FUNC5(TLAN_NET_SIO_MCLK, sio);	/* idle cycle */
	FUNC9(TLAN_NET_SIO_MCLK, sio);

	if (minten)
		FUNC9(TLAN_NET_SIO_MINTEN, sio);

	if (!FUNC0())
		FUNC4(&priv->lock, flags);

}