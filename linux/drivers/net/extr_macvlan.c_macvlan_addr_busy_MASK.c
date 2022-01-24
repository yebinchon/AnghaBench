#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct macvlan_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct macvlan_port const*) ; 
 scalar_t__ FUNC2 (struct macvlan_port const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct macvlan_port const*) ; 

__attribute__((used)) static bool FUNC4(const struct macvlan_port *port,
			      const unsigned char *addr)
{
	/* Test to see if the specified address is
	 * currently in use by the underlying device or
	 * another macvlan.
	 */
	if (!FUNC3(port) && !FUNC1(port) &&
	    FUNC0(port->dev->dev_addr, addr))
		return true;

	if (FUNC2(port, addr))
		return true;

	return false;
}