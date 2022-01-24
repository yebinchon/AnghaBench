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
struct mlx5e_tirc_config {int l3_prot_type; int l4_prot_type; int rx_hash_fields; } ;
struct mlx5e_rss_params {scalar_t__ hfunc; int /*<<< orphan*/  toeplitz_hash_key; } ;

/* Variables and functions */
 scalar_t__ ETH_RSS_HASH_TOP ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  l3_prot_type ; 
 int /*<<< orphan*/  l4_prot_type ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (scalar_t__) ; 
 void* rx_hash_field_select ; 
 int /*<<< orphan*/  rx_hash_field_selector_inner ; 
 int /*<<< orphan*/  rx_hash_field_selector_outer ; 
 int /*<<< orphan*/  rx_hash_fn ; 
 int /*<<< orphan*/  rx_hash_symmetric ; 
 int /*<<< orphan*/  rx_hash_toeplitz_key ; 
 int /*<<< orphan*/  selected_fields ; 

void FUNC5(struct mlx5e_rss_params *rss_params,
				    const struct mlx5e_tirc_config *ttconfig,
				    void *tirc, bool inner)
{
	void *hfso = inner ? FUNC0(tirc, tirc, rx_hash_field_selector_inner) :
			     FUNC0(tirc, tirc, rx_hash_field_selector_outer);

	FUNC2(tirc, tirc, rx_hash_fn, FUNC4(rss_params->hfunc));
	if (rss_params->hfunc == ETH_RSS_HASH_TOP) {
		void *rss_key = FUNC0(tirc, tirc,
					     rx_hash_toeplitz_key);
		size_t len = FUNC1(tirc,
					       rx_hash_toeplitz_key);

		FUNC2(tirc, tirc, rx_hash_symmetric, 1);
		FUNC3(rss_key, rss_params->toeplitz_hash_key, len);
	}
	FUNC2(rx_hash_field_select, hfso, l3_prot_type,
		 ttconfig->l3_prot_type);
	FUNC2(rx_hash_field_select, hfso, l4_prot_type,
		 ttconfig->l4_prot_type);
	FUNC2(rx_hash_field_select, hfso, selected_fields,
		 ttconfig->rx_hash_fields);
}