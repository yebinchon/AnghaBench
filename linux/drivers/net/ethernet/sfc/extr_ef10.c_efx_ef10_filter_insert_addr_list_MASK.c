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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct efx_nic {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rss_context; struct efx_ef10_filter_table* filter_state; } ;
struct efx_filter_spec {int dummy; } ;
struct efx_ef10_filter_vlan {scalar_t__* default_filters; int /*<<< orphan*/  vid; scalar_t__* uc; scalar_t__* mc; } ;
struct efx_ef10_filter_table {int dev_mc_count; int dev_uc_count; struct efx_ef10_dev_addr* dev_uc_list; struct efx_ef10_dev_addr* dev_mc_list; } ;
struct efx_ef10_dev_addr {int /*<<< orphan*/ * addr; } ;
typedef  enum efx_filter_flags { ____Placeholder_efx_filter_flags } efx_filter_flags ;

/* Variables and functions */
 size_t EFX_EF10_BCAST ; 
 scalar_t__ EFX_EF10_FILTER_ID_INVALID ; 
 int EFX_FILTER_FLAG_RX_RSS ; 
 int /*<<< orphan*/  EFX_FILTER_PRI_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct efx_nic*,struct efx_filter_spec*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_filter_spec*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_filter_spec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC10(struct efx_nic *efx,
					    struct efx_ef10_filter_vlan *vlan,
					    bool multicast, bool rollback)
{
	struct efx_ef10_filter_table *table = efx->filter_state;
	struct efx_ef10_dev_addr *addr_list;
	enum efx_filter_flags filter_flags;
	struct efx_filter_spec spec;
	u8 baddr[ETH_ALEN];
	unsigned int i, j;
	int addr_count;
	u16 *ids;
	int rc;

	if (multicast) {
		addr_list = table->dev_mc_list;
		addr_count = table->dev_mc_count;
		ids = vlan->mc;
	} else {
		addr_list = table->dev_uc_list;
		addr_count = table->dev_uc_count;
		ids = vlan->uc;
	}

	filter_flags = FUNC6(&efx->rss_context) ? EFX_FILTER_FLAG_RX_RSS : 0;

	/* Insert/renew filters */
	for (i = 0; i < addr_count; i++) {
		FUNC0(ids[i] != EFX_EF10_FILTER_ID_INVALID);
		FUNC4(&spec, EFX_FILTER_PRI_AUTO, filter_flags, 0);
		FUNC5(&spec, vlan->vid, addr_list[i].addr);
		rc = FUNC2(efx, &spec, true);
		if (rc < 0) {
			if (rollback) {
				FUNC8(efx, drv, efx->net_dev,
					   "efx_ef10_filter_insert failed rc=%d\n",
					   rc);
				/* Fall back to promiscuous */
				for (j = 0; j < i; j++) {
					FUNC3(
						efx, EFX_FILTER_PRI_AUTO,
						ids[j]);
					ids[j] = EFX_EF10_FILTER_ID_INVALID;
				}
				return rc;
			} else {
				/* keep invalid ID, and carry on */
			}
		} else {
			ids[i] = FUNC1(rc);
		}
	}

	if (multicast && rollback) {
		/* Also need an Ethernet broadcast filter */
		FUNC0(vlan->default_filters[EFX_EF10_BCAST] !=
				     EFX_EF10_FILTER_ID_INVALID);
		FUNC4(&spec, EFX_FILTER_PRI_AUTO, filter_flags, 0);
		FUNC7(baddr);
		FUNC5(&spec, vlan->vid, baddr);
		rc = FUNC2(efx, &spec, true);
		if (rc < 0) {
			FUNC9(efx, drv, efx->net_dev,
				   "Broadcast filter insert failed rc=%d\n", rc);
			/* Fall back to promiscuous */
			for (j = 0; j < i; j++) {
				FUNC3(
					efx, EFX_FILTER_PRI_AUTO,
					ids[j]);
				ids[j] = EFX_EF10_FILTER_ID_INVALID;
			}
			return rc;
		} else {
			vlan->default_filters[EFX_EF10_BCAST] =
				FUNC1(rc);
		}
	}

	return 0;
}