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
struct nfp_prog {int /*<<< orphan*/  map_records_cnt; struct nfp_bpf_neutral_map** map_records; } ;
struct nfp_bpf_neutral_map {int count; int /*<<< orphan*/  l; int /*<<< orphan*/  map_id; struct bpf_map* ptr; } ;
struct nfp_app_bpf {int /*<<< orphan*/  maps_neutral; } ;
struct bpf_map {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct bpf_map*) ; 
 int FUNC1 (struct bpf_map*) ; 
 struct bpf_map* FUNC2 (struct bpf_map*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_bpf_neutral_map*) ; 
 struct nfp_bpf_neutral_map* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfp_bpf_maps_neutral_params ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfp_bpf_neutral_map* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct nfp_app_bpf *bpf, struct nfp_prog *nfp_prog,
		   struct bpf_map *map)
{
	struct nfp_bpf_neutral_map *record;
	int err;

	/* Reuse path - other offloaded program is already tracking this map. */
	record = FUNC7(&bpf->maps_neutral, &map->id,
					nfp_bpf_maps_neutral_params);
	if (record) {
		nfp_prog->map_records[nfp_prog->map_records_cnt++] = record;
		record->count++;
		return 0;
	}

	/* Grab a single ref to the map for our record.  The prog destroy ndo
	 * happens after free_used_maps().
	 */
	map = FUNC2(map, false);
	if (FUNC0(map))
		return FUNC1(map);

	record = FUNC5(sizeof(*record), GFP_KERNEL);
	if (!record) {
		err = -ENOMEM;
		goto err_map_put;
	}

	record->ptr = map;
	record->map_id = map->id;
	record->count = 1;

	err = FUNC6(&bpf->maps_neutral, &record->l,
				     nfp_bpf_maps_neutral_params);
	if (err)
		goto err_free_rec;

	nfp_prog->map_records[nfp_prog->map_records_cnt++] = record;

	return 0;

err_free_rec:
	FUNC4(record);
err_map_put:
	FUNC3(map);
	return err;
}