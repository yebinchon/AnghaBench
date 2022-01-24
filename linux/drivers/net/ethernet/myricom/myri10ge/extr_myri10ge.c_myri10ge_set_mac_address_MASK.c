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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct myri10ge_priv {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct myri10ge_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 struct myri10ge_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *addr)
{
	struct sockaddr *sa = addr;
	struct myri10ge_priv *mgp = FUNC4(dev);
	int status;

	if (!FUNC0(sa->sa_data))
		return -EADDRNOTAVAIL;

	status = FUNC2(mgp, sa->sa_data);
	if (status != 0) {
		FUNC3(dev, "changing mac address failed with %d\n",
			   status);
		return status;
	}

	/* change the dev structure */
	FUNC1(dev->dev_addr, sa->sa_data, ETH_ALEN);
	return 0;
}