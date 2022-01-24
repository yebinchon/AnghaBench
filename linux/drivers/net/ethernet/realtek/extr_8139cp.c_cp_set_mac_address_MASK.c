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
struct net_device {scalar_t__ dev_addr; int /*<<< orphan*/  addr_len; } ;
struct cp_private {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  Cfg9346 ; 
 int /*<<< orphan*/  Cfg9346_Lock ; 
 int /*<<< orphan*/  Cfg9346_Unlock ; 
 int EADDRNOTAVAIL ; 
 scalar_t__ MAC0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cp_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, void *p)
{
	struct cp_private *cp = FUNC5(dev);
	struct sockaddr *addr = p;

	if (!FUNC2(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC4(dev->dev_addr, addr->sa_data, dev->addr_len);

	FUNC6(&cp->lock);

	FUNC1(Cfg9346, Cfg9346_Unlock);
	FUNC0(MAC0 + 0, FUNC3 (*(__le32 *) (dev->dev_addr + 0)));
	FUNC0(MAC0 + 4, FUNC3 (*(__le32 *) (dev->dev_addr + 4)));
	FUNC1(Cfg9346, Cfg9346_Lock);

	FUNC7(&cp->lock);

	return 0;
}