#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfp_bpf_map {int /*<<< orphan*/  l; int /*<<< orphan*/  cache_blockers; int /*<<< orphan*/  cache; } ;
struct nfp_app_bpf {int /*<<< orphan*/  maps_in_use; int /*<<< orphan*/  map_elems_in_use; } ;
struct TYPE_2__ {scalar_t__ max_entries; } ;
struct bpf_offloaded_map {TYPE_1__ map; struct nfp_bpf_map* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_bpf_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app_bpf*,struct nfp_bpf_map*) ; 

__attribute__((used)) static int
FUNC5(struct nfp_app_bpf *bpf, struct bpf_offloaded_map *offmap)
{
	struct nfp_bpf_map *nfp_map = offmap->dev_priv;

	FUNC4(bpf, nfp_map);
	FUNC1(nfp_map->cache);
	FUNC0(nfp_map->cache_blockers);
	FUNC3(&nfp_map->l);
	bpf->map_elems_in_use -= offmap->map.max_entries;
	bpf->maps_in_use--;
	FUNC2(nfp_map);

	return 0;
}