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
typedef  scalar_t__ u_long ;

/* Variables and functions */
 int MII_MRD ; 
 int MII_MWR ; 
 int MII_RD ; 
 scalar_t__ MII_STWR ; 
 int MII_WR ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(u_long rw, u_long ioaddr)
{
    if (rw == MII_STWR) {
	FUNC1(MII_MWR | MII_WR, 1, ioaddr);
	FUNC1(MII_MWR | MII_WR, 0, ioaddr);
    } else {
	FUNC0(MII_MRD | MII_RD, ioaddr);        /* Tri-state MDIO */
    }
}