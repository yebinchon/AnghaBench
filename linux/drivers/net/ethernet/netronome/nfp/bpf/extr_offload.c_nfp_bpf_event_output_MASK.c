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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct nfp_bpf_neutral_map {int /*<<< orphan*/  ptr; } ;
struct nfp_app_bpf {int /*<<< orphan*/  maps_neutral; } ;
struct TYPE_2__ {scalar_t__ ver; } ;
struct cmsg_bpf_event {int /*<<< orphan*/ * data; int /*<<< orphan*/  cpu_id; TYPE_1__ hdr; int /*<<< orphan*/  map_ptr; int /*<<< orphan*/  data_size; int /*<<< orphan*/  pkt_size; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NFP_CCM_ABI_VERSION ; 
 scalar_t__ U32_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app_bpf*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  nfp_bpf_maps_neutral_params ; 
 int /*<<< orphan*/  nfp_bpf_perf_event_copy ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct nfp_bpf_neutral_map* FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int,int) ; 

int FUNC8(struct nfp_app_bpf *bpf, const void *data,
			 unsigned int len)
{
	struct cmsg_bpf_event *cbe = (void *)data;
	struct nfp_bpf_neutral_map *record;
	u32 pkt_size, data_size, map_id;
	u64 map_id_full;

	if (len < sizeof(struct cmsg_bpf_event))
		return -EINVAL;

	pkt_size = FUNC0(cbe->pkt_size);
	data_size = FUNC0(cbe->data_size);
	map_id_full = FUNC1(cbe->map_ptr);
	map_id = map_id_full;

	if (len < sizeof(struct cmsg_bpf_event) + pkt_size + data_size)
		return -EINVAL;
	if (cbe->hdr.ver != NFP_CCM_ABI_VERSION)
		return -EINVAL;

	FUNC4();
	record = FUNC6(&bpf->maps_neutral, &map_id,
					nfp_bpf_maps_neutral_params);
	if (!record || map_id_full > U32_MAX) {
		FUNC5();
		FUNC3(bpf, "perf event: map id %lld (0x%llx) not recognized, dropping event\n",
			  map_id_full, map_id_full);
		return -EINVAL;
	}

	FUNC2(record->ptr, FUNC0(cbe->cpu_id),
			 &cbe->data[FUNC7(pkt_size, 4)], data_size,
			 cbe->data, pkt_size, nfp_bpf_perf_event_copy);
	FUNC5();

	return 0;
}