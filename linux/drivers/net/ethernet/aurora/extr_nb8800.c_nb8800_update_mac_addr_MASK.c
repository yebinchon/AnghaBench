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
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct nb8800_priv {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nb8800_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nb8800_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC3(dev);
	int i;

	for (i = 0; i < ETH_ALEN; i++)
		FUNC2(priv, FUNC0(i), dev->dev_addr[i]);

	for (i = 0; i < ETH_ALEN; i++)
		FUNC2(priv, FUNC1(i), dev->dev_addr[i]);
}