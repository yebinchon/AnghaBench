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
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int FUNC0 (struct enetc_ndev_priv*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, void *addr)
{
	struct enetc_ndev_priv *priv = FUNC2(ndev);
	struct sockaddr *saddr = addr;
	int err;

	if (!FUNC1(saddr->sa_data))
		return -EADDRNOTAVAIL;

	err = FUNC0(priv, saddr);
	if (err)
		return err;

	return 0;
}