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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int MII_PREAMBLE ; 
 int MII_STWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int data, u_char phyreg, u_char phyaddr, u_long ioaddr)
{
    FUNC3(MII_PREAMBLE,  2, ioaddr);   /* Start of 34 bit preamble...    */
    FUNC3(MII_PREAMBLE, 32, ioaddr);   /* ...continued                   */
    FUNC3(MII_STWR, 4, ioaddr);        /* SFD and Write operation        */
    FUNC0(phyaddr, ioaddr);          /* PHY address to be accessed     */
    FUNC0(phyreg, ioaddr);           /* PHY Register to write          */
    FUNC2(MII_STWR, ioaddr);              /* Turn around time - 2 MDC       */
    data = FUNC1(data, 16);             /* Swap data bit ordering         */
    FUNC3(data, 16, ioaddr);           /* Write data                     */
}