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
typedef  int u8 ;
struct sd {int dummy; } ;

/* Variables and functions */
 int MT9M111_CAMERA_CONTROL ; 
 int MT9M111_COLORPIPE ; 
 int /*<<< orphan*/  MT9M111_PAGE_MAP ; 
 int MT9M111_SENSOR_CORE ; 
 int /*<<< orphan*/  FUNC0 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	u8 address, value[2] = {0x00, 0x00};

	FUNC2("Dumping the mt9m111 register state\n");

	FUNC2("Dumping the mt9m111 sensor core registers\n");
	value[1] = MT9M111_SENSOR_CORE;
	FUNC1(sd, MT9M111_PAGE_MAP, value, 2);
	for (address = 0; address < 0xff; address++) {
		FUNC0(sd, address, value, 2);
		FUNC2("register 0x%x contains 0x%x%x\n",
			address, value[0], value[1]);
	}

	FUNC2("Dumping the mt9m111 color pipeline registers\n");
	value[1] = MT9M111_COLORPIPE;
	FUNC1(sd, MT9M111_PAGE_MAP, value, 2);
	for (address = 0; address < 0xff; address++) {
		FUNC0(sd, address, value, 2);
		FUNC2("register 0x%x contains 0x%x%x\n",
			address, value[0], value[1]);
	}

	FUNC2("Dumping the mt9m111 camera control registers\n");
	value[1] = MT9M111_CAMERA_CONTROL;
	FUNC1(sd, MT9M111_PAGE_MAP, value, 2);
	for (address = 0; address < 0xff; address++) {
		FUNC0(sd, address, value, 2);
		FUNC2("register 0x%x contains 0x%x%x\n",
			address, value[0], value[1]);
	}

	FUNC2("mt9m111 register state dump complete\n");
}