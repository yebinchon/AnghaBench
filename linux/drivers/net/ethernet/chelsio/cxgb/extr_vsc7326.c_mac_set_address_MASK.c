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
typedef  int u8 ;
typedef  int u32 ;
struct cmac {int /*<<< orphan*/  adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ING_FFILT_MASK0 ; 
 int /*<<< orphan*/  REG_ING_FFILT_MASK1 ; 
 int /*<<< orphan*/  REG_ING_FFILT_MASK2 ; 
 int /*<<< orphan*/  REG_ING_FFILT_UM_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct cmac* mac, u8 addr[6])
{
	u32 val;
	int port = mac->instance->index;

	FUNC3(mac->adapter, FUNC1(port),
		  (addr[3] << 16) | (addr[4] << 8) | addr[5]);
	FUNC3(mac->adapter, FUNC0(port),
		  (addr[0] << 16) | (addr[1] << 8) | addr[2]);

	FUNC2(mac->adapter, REG_ING_FFILT_UM_EN, &val);
	val &= ~0xf0000000;
	FUNC3(mac->adapter, REG_ING_FFILT_UM_EN, val | (port << 28));

	FUNC3(mac->adapter, REG_ING_FFILT_MASK0,
		  0xffff0000 | (addr[4] << 8) | addr[5]);
	FUNC3(mac->adapter, REG_ING_FFILT_MASK1,
		  0xffff0000 | (addr[2] << 8) | addr[3]);
	FUNC3(mac->adapter, REG_ING_FFILT_MASK2,
		  0xffff0000 | (addr[0] << 8) | addr[1]);
	return 0;
}