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
typedef  unsigned int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int) ; 

__attribute__((used)) static void
FUNC4(unsigned int ioaddr, u_char phyaddr, u_char phyreg, unsigned data,
       int len)
{
    int i;

    FUNC0(2);
    for (i=0; i < 32; i++)		/* 32 bit preamble */
	FUNC2(ioaddr, 1);
    FUNC3(ioaddr, 0x05, 4); 	/* Start and opcode for write */
    FUNC3(ioaddr, phyaddr, 5);	/* PHY address to be accessed */
    FUNC3(ioaddr, phyreg, 5);	/* PHY Register to write */
    FUNC2(ioaddr, 1);		/* turn around */
    FUNC2(ioaddr, 0);
    FUNC3(ioaddr, data, len);	/* And write the data */
    FUNC1(ioaddr);
}