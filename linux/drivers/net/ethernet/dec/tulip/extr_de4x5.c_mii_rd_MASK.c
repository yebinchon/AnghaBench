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
 int /*<<< orphan*/  MII_PREAMBLE ; 
 int /*<<< orphan*/  MII_STRD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(u_char phyreg, u_char phyaddr, u_long ioaddr)
{
    FUNC3(MII_PREAMBLE,  2, ioaddr);   /* Start of 34 bit preamble...    */
    FUNC3(MII_PREAMBLE, 32, ioaddr);   /* ...continued                   */
    FUNC3(MII_STRD, 4, ioaddr);        /* SFD and Read operation         */
    FUNC0(phyaddr, ioaddr);          /* PHY address to be accessed     */
    FUNC0(phyreg, ioaddr);           /* PHY Register to read           */
    FUNC2(MII_STRD, ioaddr);              /* Turn around time - 2 MDC       */

    return FUNC1(ioaddr);              /* Read data                      */
}