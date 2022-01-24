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
typedef  scalar_t__ u8 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ CX25840_PAD_VRESET ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,char*,unsigned int) ; 

__attribute__((used)) static u8 FUNC1(struct i2c_client *client, u8 function)
{
	if (function > CX25840_PAD_VRESET) {
		FUNC0(client, "invalid function %u, assuming default\n",
			(unsigned int)function);
		return 0;
	}

	return function;
}