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
struct resource {scalar_t__ end; scalar_t__ start; } ;
struct gpmc_cs_data {struct resource mem; } ;

/* Variables and functions */
 struct gpmc_cs_data* gpmc_cs ; 
 int /*<<< orphan*/  gpmc_mem_lock ; 
 int FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int cs)
{
	struct gpmc_cs_data *gpmc = &gpmc_cs[cs];
	struct resource *res = &gpmc->mem;
	int r;

	FUNC1(&gpmc_mem_lock);
	r = FUNC0(res);
	res->start = 0;
	res->end = 0;
	FUNC2(&gpmc_mem_lock);

	return r;
}