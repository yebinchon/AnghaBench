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
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dsa_switch*,int,int) ; 
 scalar_t__ FUNC1 (struct dsa_switch*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, int port,
				     int sset)
{
	int cnt = FUNC0(ds, port, sset);

	if (cnt < 0)
		return cnt;

	cnt += FUNC1(ds, port, sset);

	return cnt;
}