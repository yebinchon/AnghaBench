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
typedef  int u32 ;
struct cobalt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct cobalt*,int) ; 

__attribute__((used)) static void FUNC2(struct cobalt *cobalt)
{
	u32 rd;
	u32 tmp;

	FUNC0("CPLD System control register (read/write)\n");
	FUNC0("\t\tSystem control:  0x%04x (0x0f00)\n",
		    FUNC1(cobalt, 0));
	FUNC0("CPLD Clock control register (read/write)\n");
	FUNC0("\t\tClock control:   0x%04x (0x0000)\n",
		    FUNC1(cobalt, 0x04));
	FUNC0("CPLD HSMA Clk Osc register (read/write) - Must set wr trigger to load default values\n");
	FUNC0("\t\tRegister #7:\t0x%04x (0x0022)\n",
		    FUNC1(cobalt, 0x08));
	FUNC0("\t\tRegister #8:\t0x%04x (0x0047)\n",
		    FUNC1(cobalt, 0x0c));
	FUNC0("\t\tRegister #9:\t0x%04x (0x00fa)\n",
		    FUNC1(cobalt, 0x10));
	FUNC0("\t\tRegister #10:\t0x%04x (0x0061)\n",
		    FUNC1(cobalt, 0x14));
	FUNC0("\t\tRegister #11:\t0x%04x (0x001e)\n",
		    FUNC1(cobalt, 0x18));
	FUNC0("\t\tRegister #12:\t0x%04x (0x0045)\n",
		    FUNC1(cobalt, 0x1c));
	FUNC0("\t\tRegister #135:\t0x%04x\n",
		    FUNC1(cobalt, 0x20));
	FUNC0("\t\tRegister #137:\t0x%04x\n",
		    FUNC1(cobalt, 0x24));
	FUNC0("CPLD System status register (read only)\n");
	FUNC0("\t\tSystem status:  0x%04x\n",
		    FUNC1(cobalt, 0x28));
	FUNC0("CPLD MAXII info register (read only)\n");
	FUNC0("\t\tBoard serial number:     0x%04x\n",
		    FUNC1(cobalt, 0x2c));
	FUNC0("\t\tMAXII program revision:  0x%04x\n",
		    FUNC1(cobalt, 0x30));
	FUNC0("CPLD temp and voltage ADT7411 registers (read only)\n");
	FUNC0("\t\tBoard temperature:  %u Celsius\n",
		    FUNC1(cobalt, 0x34) / 4);
	FUNC0("\t\tFPGA temperature:   %u Celsius\n",
		    FUNC1(cobalt, 0x38) / 4);
	rd = FUNC1(cobalt, 0x3c);
	tmp = (rd * 33 * 1000) / (483 * 10);
	FUNC0("\t\tVDD 3V3:      %u,%03uV\n", tmp / 1000, tmp % 1000);
	rd = FUNC1(cobalt, 0x40);
	tmp = (rd * 74 * 2197) / (27 * 1000);
	FUNC0("\t\tADC ch3 5V:   %u,%03uV\n", tmp / 1000, tmp % 1000);
	rd = FUNC1(cobalt, 0x44);
	tmp = (rd * 74 * 2197) / (47 * 1000);
	FUNC0("\t\tADC ch4 3V:   %u,%03uV\n", tmp / 1000, tmp % 1000);
	rd = FUNC1(cobalt, 0x48);
	tmp = (rd * 57 * 2197) / (47 * 1000);
	FUNC0("\t\tADC ch5 2V5:  %u,%03uV\n", tmp / 1000, tmp % 1000);
	rd = FUNC1(cobalt, 0x4c);
	tmp = (rd * 2197) / 1000;
	FUNC0("\t\tADC ch6 1V8:  %u,%03uV\n", tmp / 1000, tmp % 1000);
	rd = FUNC1(cobalt, 0x50);
	tmp = (rd * 2197) / 1000;
	FUNC0("\t\tADC ch7 1V5:  %u,%03uV\n", tmp / 1000, tmp % 1000);
	rd = FUNC1(cobalt, 0x54);
	tmp = (rd * 2197) / 1000;
	FUNC0("\t\tADC ch8 0V9:  %u,%03uV\n", tmp / 1000, tmp % 1000);
}