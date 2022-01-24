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
struct l2t_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct l2t_data*,int /*<<< orphan*/  const*,int) ; 
 unsigned int FUNC1 (struct l2t_data*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static unsigned int FUNC2(struct l2t_data *d, const u32 *addr,
			      int addr_len, int ifindex)
{
	return addr_len == 4 ? FUNC0(d, addr, ifindex) :
			       FUNC1(d, addr, ifindex);
}