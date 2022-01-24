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
typedef  int /*<<< orphan*/  u32 ;
struct ar5523_write_mac {scalar_t__ data; void* len; void* reg; } ;
struct ar5523 {int dummy; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  WDCMSG_TARGET_SET_CONFIG ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,struct ar5523_write_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ar5523 *ar, u32 reg, u32 val)
{
	struct ar5523_write_mac write;
	int error;

	write.reg = FUNC2(reg);
	write.len = FUNC2(0);	/* 0 = single write */
	*(__be32 *)write.data = FUNC2(val);

	error = FUNC0(ar, WDCMSG_TARGET_SET_CONFIG, &write,
				 3 * sizeof(u32), 0);
	if (error != 0)
		FUNC1(ar, "could not write register 0x%02x\n", reg);
	return error;
}