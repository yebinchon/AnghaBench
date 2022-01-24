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
typedef  long uint ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 long FUNC1 (long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,long) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *p, int len, int align)
{
	uint datalign;
	datalign = (unsigned long)(p->data);
	datalign = FUNC1(datalign, (align)) - datalign;
	if (datalign)
		FUNC2(p, datalign);
	FUNC0(p, len);
}