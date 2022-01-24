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
struct tp_params {int dummy; } ;
struct petp {int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct petp* FUNC0 (int,int /*<<< orphan*/ ) ; 

struct petp *FUNC1(adapter_t *adapter, struct tp_params *p)
{
	struct petp *tp = FUNC0(sizeof(*tp), GFP_KERNEL);

	if (!tp)
		return NULL;

	tp->adapter = adapter;

	return tp;
}