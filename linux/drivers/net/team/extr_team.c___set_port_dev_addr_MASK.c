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
struct sockaddr_storage {int /*<<< orphan*/  ss_family; int /*<<< orphan*/  __data; } ;
struct sockaddr {int dummy; } ;
struct net_device {int /*<<< orphan*/  type; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *port_dev,
			       const unsigned char *dev_addr)
{
	struct sockaddr_storage addr;

	FUNC1(addr.__data, dev_addr, port_dev->addr_len);
	addr.ss_family = port_dev->type;
	return FUNC0(port_dev, (struct sockaddr *)&addr, NULL);
}