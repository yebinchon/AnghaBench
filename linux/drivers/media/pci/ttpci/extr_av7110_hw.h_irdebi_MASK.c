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
struct av7110 {int /*<<< orphan*/  debi_virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct av7110*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static inline u32 FUNC2(struct av7110 *av7110, u32 config, int addr, u32 val, unsigned int count)
{
	u32 res;

	res=FUNC0(av7110, config, addr, count);
	if (count<=4)
		FUNC1(av7110->debi_virt, (char *) &res, count);
	return res;
}