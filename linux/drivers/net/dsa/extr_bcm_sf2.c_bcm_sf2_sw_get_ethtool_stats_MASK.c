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
typedef  int /*<<< orphan*/  uint64_t ;
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_SS_STATS ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dsa_switch*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int port,
					 uint64_t *data)
{
	int cnt = FUNC1(ds, port, ETH_SS_STATS);

	FUNC0(ds, port, data);
	FUNC2(ds, port, data + cnt);
}