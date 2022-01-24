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
typedef  int /*<<< orphan*/  u8 ;
struct tveeprom {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct ivtv {TYPE_1__ i2c_client; } ;
typedef  int /*<<< orphan*/  eedata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tveeprom*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct ivtv *itv, struct tveeprom *tv)
{
	u8 eedata[256];

	itv->i2c_client.addr = 0xA0 >> 1;
	FUNC1(&itv->i2c_client, eedata, sizeof(eedata));
	FUNC0(tv, eedata);
}