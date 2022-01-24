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
typedef  int u16 ;
struct sdio_func {scalar_t__ tmpbuf; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sdio_func*,scalar_t__,unsigned int,int) ; 

u16 FUNC2(struct sdio_func *func, unsigned int addr, int *err_ret)
{
	int ret;

	ret = FUNC1(func, func->tmpbuf, addr, 2);
	if (err_ret)
		*err_ret = ret;
	if (ret)
		return 0xFFFF;

	return FUNC0((__le16 *)func->tmpbuf);
}