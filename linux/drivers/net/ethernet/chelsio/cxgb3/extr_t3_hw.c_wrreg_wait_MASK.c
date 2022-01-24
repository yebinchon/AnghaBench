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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,unsigned int) ; 
 int EIO ; 
 int F_BUSY ; 
 int FUNC1 (struct adapter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct adapter *adapter, unsigned int addr, u32 val)
{
	FUNC2(adapter, addr, val);
	FUNC1(adapter, addr);	/* flush */
	if (!(FUNC1(adapter, addr) & F_BUSY))
		return 0;
	FUNC0(adapter, "write to MC7 register 0x%x timed out\n", addr);
	return -EIO;
}