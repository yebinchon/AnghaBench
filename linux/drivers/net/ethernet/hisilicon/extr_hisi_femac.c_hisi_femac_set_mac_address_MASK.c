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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_assign_type; int /*<<< orphan*/  addr_len; } ;
struct hisi_femac_priv {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  NET_ADDR_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_femac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hisi_femac_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *p)
{
	struct hisi_femac_priv *priv = FUNC3(dev);
	struct sockaddr *skaddr = p;

	if (!FUNC1(skaddr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(dev->dev_addr, skaddr->sa_data, dev->addr_len);
	dev->addr_assign_type &= ~NET_ADDR_RANDOM;

	FUNC0(priv, dev->dev_addr);

	return 0;
}