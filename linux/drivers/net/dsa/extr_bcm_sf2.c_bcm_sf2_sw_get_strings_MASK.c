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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u32 ;
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
 int FUNC0 (struct dsa_switch*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int port,
				   u32 stringset, uint8_t *data)
{
	int cnt = FUNC0(ds, port, stringset);

	FUNC1(ds, port, stringset, data);
	FUNC2(ds, port, stringset,
				data + cnt * ETH_GSTRING_LEN);
}