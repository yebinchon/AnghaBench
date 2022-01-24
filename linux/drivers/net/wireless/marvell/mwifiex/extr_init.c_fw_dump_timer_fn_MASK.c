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
struct timer_list {int dummy; } ;
struct mwifiex_adapter {int dummy; } ;

/* Variables and functions */
 struct mwifiex_adapter* adapter ; 
 int /*<<< orphan*/  devdump_timer ; 
 struct mwifiex_adapter* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct mwifiex_adapter *adapter = FUNC0(adapter, t, devdump_timer);

	FUNC1(adapter);
}