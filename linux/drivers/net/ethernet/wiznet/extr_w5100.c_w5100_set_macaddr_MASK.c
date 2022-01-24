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
struct w5100_priv {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct w5100_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct w5100_priv*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, void *addr)
{
	struct w5100_priv *priv = FUNC2(ndev);
	struct sockaddr *sock_addr = addr;

	if (!FUNC0(sock_addr->sa_data))
		return -EADDRNOTAVAIL;
	FUNC1(ndev->dev_addr, sock_addr->sa_data, ETH_ALEN);
	FUNC3(priv);
	return 0;
}