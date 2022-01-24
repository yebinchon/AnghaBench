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
typedef  scalar_t__ u64 ;
struct nsim_bpf_bound_map {int /*<<< orphan*/  mutex; TYPE_2__* entry; } ;
struct TYPE_3__ {int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; } ;
struct bpf_offloaded_map {TYPE_1__ map; struct nsim_bpf_bound_map* dev_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ BPF_EXIST ; 
 scalar_t__ BPF_NOEXIST ; 
 int E2BIG ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct bpf_offloaded_map*,int) ; 
 int FUNC5 (struct bpf_offloaded_map*,void*) ; 

__attribute__((used)) static int
FUNC6(struct bpf_offloaded_map *offmap,
		     void *key, void *value, u64 flags)
{
	struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
	int idx, err = 0;

	FUNC2(&nmap->mutex);

	idx = FUNC5(offmap, key);
	if (idx < 0 && flags == BPF_EXIST) {
		err = idx;
		goto exit_unlock;
	}
	if (idx >= 0 && flags == BPF_NOEXIST) {
		err = -EEXIST;
		goto exit_unlock;
	}

	if (idx < 0) {
		for (idx = 0; idx < FUNC0(nmap->entry); idx++)
			if (!nmap->entry[idx].key)
				break;
		if (idx == FUNC0(nmap->entry)) {
			err = -E2BIG;
			goto exit_unlock;
		}

		err = FUNC4(offmap, idx);
		if (err)
			goto exit_unlock;
	}

	FUNC1(nmap->entry[idx].key, key, offmap->map.key_size);
	FUNC1(nmap->entry[idx].value, value, offmap->map.value_size);
exit_unlock:
	FUNC3(&nmap->mutex);

	return err;
}