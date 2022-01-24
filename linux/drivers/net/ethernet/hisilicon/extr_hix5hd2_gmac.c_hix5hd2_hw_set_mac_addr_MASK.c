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
typedef  unsigned char u32 ;
struct net_device {unsigned char* dev_addr; } ;
struct hix5hd2_priv {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ STATION_ADDR_HIGH ; 
 scalar_t__ STATION_ADDR_LOW ; 
 struct hix5hd2_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct hix5hd2_priv *priv = FUNC0(dev);
	unsigned char *mac = dev->dev_addr;
	u32 val;

	val = mac[1] | (mac[0] << 8);
	FUNC1(val, priv->base + STATION_ADDR_HIGH);

	val = mac[5] | (mac[4] << 8) | (mac[3] << 16) | (mac[2] << 24);
	FUNC1(val, priv->base + STATION_ADDR_LOW);
}