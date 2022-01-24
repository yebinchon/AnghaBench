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
typedef  int /*<<< orphan*/  u32 ;
struct clip_tbl {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct clip_tbl*,int /*<<< orphan*/  const*) ; 
 unsigned int FUNC1 (struct clip_tbl*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static unsigned int FUNC2(struct clip_tbl *ctbl, const u32 *addr,
				   u8 v6)
{
	return v6 ? FUNC1(ctbl, addr) :
			FUNC0(ctbl, addr);
}