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
struct nsim_bpf_bound_map {int /*<<< orphan*/ * entry; } ;
struct bpf_offloaded_map {int /*<<< orphan*/  map; struct nsim_bpf_bound_map* dev_priv; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC2(struct bpf_offloaded_map *offmap, void *key)
{
	struct nsim_bpf_bound_map *nmap = offmap->dev_priv;
	unsigned int i;

	for (i = 0; i < FUNC0(nmap->entry); i++)
		if (FUNC1(&offmap->map, &nmap->entry[i], key))
			return i;

	return -ENOENT;
}