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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int MII_MWR ; 
 int MII_WR ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(int data, int len, u_long ioaddr)
{
    int i;

    for (i=0; i<len; i++) {
	FUNC0(MII_MWR | MII_WR, data, ioaddr);
	data >>= 1;
    }
}