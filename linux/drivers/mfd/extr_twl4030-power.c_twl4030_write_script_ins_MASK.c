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
typedef  int u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(u8 address, u16 pmb_message,
					   u8 delay, u8 next)
{
	int err;

	address *= 4;
	err = FUNC0(address++, pmb_message >> 8);
	if (err)
		goto out;
	err = FUNC0(address++, pmb_message & 0xff);
	if (err)
		goto out;
	err = FUNC0(address++, delay);
	if (err)
		goto out;
	err = FUNC0(address++, next);
out:
	return err;
}