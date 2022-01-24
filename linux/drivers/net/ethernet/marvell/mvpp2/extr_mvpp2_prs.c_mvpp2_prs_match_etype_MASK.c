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
struct mvpp2_prs_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int,unsigned short,int) ; 

__attribute__((used)) static void FUNC1(struct mvpp2_prs_entry *pe, int offset,
				  unsigned short ethertype)
{
	FUNC0(pe, offset + 0, ethertype >> 8, 0xff);
	FUNC0(pe, offset + 1, ethertype & 0xff, 0xff);
}