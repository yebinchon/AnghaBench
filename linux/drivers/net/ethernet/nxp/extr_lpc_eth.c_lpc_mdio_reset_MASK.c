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
struct netdata_local {int dummy; } ;
struct mii_bus {scalar_t__ priv; } ;

/* Variables and functions */
 int FUNC0 (struct netdata_local*) ; 

__attribute__((used)) static int FUNC1(struct mii_bus *bus)
{
	return FUNC0((struct netdata_local *)bus->priv);
}