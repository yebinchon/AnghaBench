#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nsim_bpf_bound_map {int /*<<< orphan*/  mutex; TYPE_1__* entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  value_size; } ;
struct bpf_offloaded_map {TYPE_2__ map; struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bpf_offloaded_map*,void*) ; 

__attribute__((used)) static int
FUNC4(struct bpf_offloaded_map *offmap, void *key, void *value)
{
	struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
	int idx;

	FUNC1(&nmap->mutex);

	idx = FUNC3(offmap, key);
	if (idx >= 0)
		FUNC0(value, nmap->entry[idx].value, offmap->map.value_size);

	FUNC2(&nmap->mutex);

	return idx < 0 ? idx : 0;
}