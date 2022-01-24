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
typedef  int u32 ;

/* Variables and functions */
 int MII_MDC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(u32 command, int data, u_long ioaddr)
{
    u32 j;

    j = (data & 1) << 17;
    FUNC0(command | j, ioaddr);
    FUNC1(1);
    FUNC0(command | MII_MDC | j, ioaddr);
    FUNC1(1);
}