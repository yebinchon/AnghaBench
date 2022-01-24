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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nfp_bpf_map {scalar_t__ cache_gen; int /*<<< orphan*/  cache_lock; int /*<<< orphan*/  cache; scalar_t__ cache_to; int /*<<< orphan*/  cache_blockers; } ;
typedef  enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;

/* Variables and functions */
 scalar_t__ NFP_BPF_MAP_CACHE_TIME_NS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC7(struct nfp_bpf_map *nfp_map, enum nfp_ccm_type op,
			  struct sk_buff *skb, u32 cache_gen)
{
	bool blocker, filler;

	blocker = FUNC3(op);
	filler = FUNC2(op);
	if (blocker || filler) {
		u64 to = 0;

		if (filler)
			to = FUNC1() + NFP_BPF_MAP_CACHE_TIME_NS;

		FUNC4(&nfp_map->cache_lock);
		if (blocker) {
			nfp_map->cache_blockers--;
			nfp_map->cache_gen++;
		}
		if (filler && !nfp_map->cache_blockers &&
		    nfp_map->cache_gen == cache_gen) {
			nfp_map->cache_to = to;
			FUNC6(nfp_map->cache, skb);
		}
		FUNC5(&nfp_map->cache_lock);
	}

	FUNC0(skb);
}